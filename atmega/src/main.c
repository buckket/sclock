#include <stdlib.h>
#include <stdio.h>
#include <avr/power.h>
#include <avr/interrupt.h>

#include "ds3231.h"
#include "clock.h"
#include "sleep.h"
#include "uart.h"
#include "twi.h"

#define VERSION "1.0.0"

volatile uint16_t queue = 0;


void setup(void) {
    setup_pins();
    twi_init();
    uart_init();
}


int main(void) {
    setup();

    char *buffer = malloc(sizeof(char) * 100);
    time_struct *real_time = malloc(sizeof(time_struct));
    time_struct *clock_time = malloc(sizeof(time_struct));
    uint8_t last_pulse;

    uart_puts("\n\n\rHello, this is sclock " VERSION "!\n\r");

    uint8_t use_rtc = PIND & (1 << PD3);
    if (use_rtc) {
        rtc_read_time(real_time);
        rtc_read_alarm1(clock_time);
        real_time->hours = real_time->hours % 12;
        last_pulse = (clock_time->hours / 12) + 1;
        clock_time->hours = clock_time->hours % 12;
    } else {
        uart_puts("\n\rPress any key to move watch hand… ");
        uart_receive();
        last_pulse = generate_clock_pulse(1);

        uart_puts("\n\rEnter current clock time [hh:mm]: ");
        uart_gets(buffer, 5);
        clock_time->hours = strtol(buffer, NULL, 10) % 12;
        clock_time->hours = clock_time->hours + (last_pulse - 1) * 12;
        clock_time->minutes = strtol(buffer + 3, NULL, 10) % 60;
        clock_time->seconds = 0;
        rtc_write_alarm1(clock_time);
        clock_time->hours = clock_time->hours % 12;

        uart_puts("\n\rEnter real world time [hh:mm]: ");
        uart_gets(buffer, 5);
        real_time->hours = strtol(buffer, NULL, 10) % 12;
        real_time->minutes = strtol(buffer + 3, NULL, 10) % 60;
        real_time->seconds = 0;
    }

    queue = (720 + (real_time->hours * 60 + real_time->minutes) - (clock_time->hours * 60 + clock_time->minutes)) % 720;
    sprintf(buffer, "\n\rClock has to move %d times!\n\rReal time:  %02d:%02d\n\rClock time: %02d:%02d\n\r", queue,
            real_time->hours, real_time->minutes,
            clock_time->hours, clock_time->minutes);
    uart_puts(buffer);

    if (!use_rtc) {
        uart_puts("\n\rPress any key to start clock… ");
        uart_receive();
        rtc_write_time(real_time);
    }

    // Disable Timers, SPI, USART and ADC
    PRR = (1 << PRTIM2) | (1 << PRTIM0) | (1 << PRTIM1) | (1 << PRSPI) | (1 << PRUSART0) | (1 << PRADC);

    free(real_time);
    free(buffer);

    rtc_enable_alarm2();
    rtc_write_control((1 << RTC_CTRL_INTCN) | (1 << RTC_CTRL_A2IE));
    rtc_write_status(0);
    enable_clock_interrupt();
    sei();

    while (1) {
        uint8_t status = rtc_read_status();
        // Check if Alarm 2 woke us up
        if (status & (1 << RTC_STATUS_A2F)) {
            rtc_write_status(0); // Clear Alarm 2 flag
            queue++;
        }
        if (queue > 0) {
            last_pulse = generate_clock_pulse(last_pulse);
            increment_time(clock_time, last_pulse);
            rtc_write_alarm1(clock_time);
            queue--;
        }
        if (queue > 0) {
            _delay_ms(500);
        } else {
            enter_sleep();
        }
    }
}

ISR(INT0_vect) {
}
