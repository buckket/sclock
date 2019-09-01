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

volatile uint8_t seconds = 0;
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

    uart_puts("\n\nHello, this is sclock " VERSION "!\n");

    uart_puts("\nPress any key to move watch hand… ");
    uart_receive();
    last_pulse = generate_clock_pulse(1);

    uart_puts("\nDid the watch hand move? [y/n] ");
    uint8_t moved = uart_receive();

    uart_puts("\nShould we load settings from RTC? [y/n] ");
    uint8_t use_rtc = uart_receive();
    if (use_rtc == 'y') {
        rtc_read_time(real_time);
        rtc_read_alarm1(clock_time);
        real_time->hours = real_time->hours % 12;
        clock_time->hours = clock_time->hours % 12;
        seconds = real_time->seconds;
        if (moved == 'y') {
            increment_time(clock_time);
        }
    } else {
        uart_puts("\nEnter current clock time [hh:mm]: ");
        uart_gets(buffer, 5);
        clock_time->hours = atoi(buffer);
        clock_time->minutes = atoi(buffer + 3);
        clock_time->seconds = 0;

        uart_puts("\nEnter real world time [hh:mm]: ");
        uart_gets(buffer, 5);
        real_time->hours = atoi(buffer);
        real_time->minutes = atoi(buffer + 3);
        real_time->seconds = 0;
    }

    queue = (720 + (real_time->hours * 60 + real_time->minutes) - (clock_time->hours * 60 + clock_time->minutes)) % 720;
    sprintf(buffer, "\nClock has to move %d times!\nReal time:  %02d:%02d\nClock time: %02d:%02d\n", queue,
            real_time->hours, real_time->minutes,
            clock_time->hours, clock_time->minutes);
    uart_puts(buffer);

    if (use_rtc != 'y') {
        uart_puts("\nPress any key to start clock… ");
        uart_receive();
        rtc_write_time(real_time);
        rtc_write_alarm1(clock_time);
    }

    rtc_enable_sqw();

    free(real_time);
    free(buffer);

    enable_clock_interrupt();
    sei();

    while (1) {
        if (seconds > 59) {
            seconds = seconds % 60;
            queue++;
            uart_puts("\nTICK");
        }
        if (queue > 0) {
            last_pulse = generate_clock_pulse(last_pulse);
            increment_time(clock_time);
            rtc_write_alarm1(clock_time);
            queue--;
        }
        enter_sleep();
    }
}


ISR(INT0_vect) {
        seconds++;
}
