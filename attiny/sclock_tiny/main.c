#include <stdlib.h>
#include <stdio.h>

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>

#include "clkctrl.h"
#include "usart.h"
#include "twi.h"
#include "rtc.h"
#include "ds3231.h"
#include "clock.h"
#include "button.h"

#define VERSION "1.0.0"

volatile uint8_t alarm_counter = 0;

int main(void) {
	CLKCTRL_init();
    USART0_init();
    TWI0_init();
    RTC_init();
    CLOCK_init();

    sei();

    //char *buffer = malloc(sizeof(char) * 100);
    char buffer[100];

    //time_struct *real_time = malloc(sizeof(time_struct));
    //time_struct *clock_time = malloc(sizeof(time_struct));
    time_struct real_time = {0};
    time_struct clock_time = {0};

    uint16_t queue = 0;
    uint8_t last_pulse;

    USART0_puts("\r\n\nHello, this is sclock " VERSION "!\r\n");

    uint8_t use_rtc = VPORTA.IN & CLOCK_PIN_CONFIG;
    if (use_rtc) {
        USART0_puts("\r\nUsing RTC module to get time");
        DS3231_read_time(&real_time);
        DS3231_read_alarm1(&clock_time);
        real_time.hours = real_time.hours % 12;
        last_pulse = (clock_time.hours / 12) + 1;
        clock_time.hours = clock_time.hours % 12;
    } else {
        RTC_PIT_enable();

        USART0_puts("\r\nConfig mode enabled!\r\nPress SW2 to move watch hand...");

        SLPCTRL.CTRLA = SLPCTRL_SMODE_PDOWN_gc | SLPCTRL_SEN_bm;
        while (BUTTON_get_key_press(CLOCK_PIN_CONFIG)) sleep_cpu();     // Make sure button was released
        while (!BUTTON_get_key_press(CLOCK_PIN_CONFIG)) sleep_cpu();    // Now we can check for a key press
        SLPCTRL.CTRLA = 0;

        RTC_PIT_disable();                                  // We need to disable PIT so we don't wake early
        last_pulse = CLOCK_generate_pulse(1);               // Generate initial pulse to get to a known state
        RTC_PIT_enable();                                   // Re-enable PIT, side note: disabling RTC breaks PIT anyway (see errata)

        // Reset key press state back to zero
        BUTTON_get_key_press(CLOCK_PIN_CONFIG | CLOCK_PIN_RESET);

        uint8_t d1, d0; // x = d1*10^1 + d0*10^0

        // CLOCK TIME START
        USART0_puts("\r\n\nEnter current clock time [h,h,m,m]: ");

        d1 = CLOCK_count_press();
        USART0_transmit(d1 + 48); // poor man's itoa()
        d0 = CLOCK_count_press();
        USART0_transmit(d0 + 48); // poor man's itoa()
        clock_time.hours = ((d1*10 + d0) % 12) + (last_pulse - 1) * 12;

        USART0_transmit(58); // :

        d1 = CLOCK_count_press();
        USART0_transmit(d1 + 48); // poor man's itoa()
        d0 = CLOCK_count_press();
        USART0_transmit(d0 + 48); // poor man's itoa()
        clock_time.minutes = (d1*10 + d0) % 60;

        DS3231_write_alarm1(&clock_time);
        // CLOCK TIME END

        // REAL TIME START
        USART0_puts("\r\nEnter real world time [h,h,m,m]: ");

        d1 = CLOCK_count_press();
        USART0_transmit(d1 + 48); // poor man's itoa()
        d0 = CLOCK_count_press();
        USART0_transmit(d0 + 48); // poor man's itoa()
        real_time.hours = (d1*10 + d0) % 12;

        USART0_transmit(58); // :

        d1 = CLOCK_count_press();
        USART0_transmit(d1 + 48); // poor man's itoa()
        d0 = CLOCK_count_press();
        USART0_transmit(d0 + 48); // poor man's itoa()
        real_time.minutes = (d1*10 + d0) % 60;
        // REAL TIME END
    }

    queue = (720 + (real_time.hours * 60 + real_time.minutes) - ((clock_time.hours % 12) * 60 + clock_time.minutes)) % 720;
    sprintf(buffer, "\r\n\nClock has to move %u times!\r\nReal time:  %02u:%02u\r\nClock time: %02u:%02u\r\n",
        queue,
        real_time.hours, real_time.minutes,
        clock_time.hours % 12, clock_time.minutes);
    USART0_puts(buffer);

    if (!use_rtc) {
        USART0_puts("\r\nPress SW2 to start clock...");
        while (!BUTTON_get_key_press(CLOCK_PIN_CONFIG));
        DS3231_write_time(&real_time);
        RTC_PIT_disable();
    }

    //free(real_time);
    //free(buffer);

    USART0_disable();

    DS3231_enable_alarm2();							// Set ALARM2 mask to get alerted every minute
    DS3231_write_control((1 << DS3231_CTRL_INTCN)	// Enable alarm function on INT pin
    | (1 << DS3231_CTRL_A2IE));				    	// Activate ALARM2 interrupt
    DS3231_write_status(0);							// Clear interrupt flags

    CLOCK_enable_interrupt();

    // Enable software reset on low level interrupt on CLOCK_PIN_RESET
    PORTA.PIN5CTRL = PORT_ISC_LEVEL_gc;

    // Disable CLOCK_PIN_CONFIG, no longer needed
    PORTA.PIN7CTRL = PORT_PULLUPEN_bm | PORT_ISC_INPUT_DISABLE_gc;

    while (1) {
        if (alarm_counter) {
            DS3231_write_status(0);
            cli();
            queue += alarm_counter;
            alarm_counter = 0;
            sei();
        }
        if (queue) {
            last_pulse = CLOCK_generate_pulse(last_pulse);
            CLOCK_increment_time(&clock_time, last_pulse);
            DS3231_write_alarm1(&clock_time);
            queue--;
        }
        if (queue | alarm_counter) {
            RTC_sleep(RTC_MS_TO_PERIOD(CLOCK_COOLDOWN));
        } else {
            SLPCTRL.CTRLA = SLPCTRL_SMODE_PDOWN_gc | SLPCTRL_SEN_bm;
            sleep_cpu();
            SLPCTRL.CTRLA = 0;
        }
    }
}

ISR(PORTA_PORT_vect) {
    if (VPORTA.INTFLAGS & CLOCK_PIN_RESET) {
        ccp_write_io((void *)&(RSTCTRL.SWRR),
        1 << RSTCTRL_SWRE_bp);
    }
    if (VPORTA.INTFLAGS & CLOCK_PIN_INT) {
        VPORTA.INTFLAGS |= CLOCK_PIN_INT;
        alarm_counter++;
    }
}
