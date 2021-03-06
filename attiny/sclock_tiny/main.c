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

#define VERSION "1.0.0"


volatile uint16_t queue = 0;


int main(void) {
	CLKCTRL_init();
	USART0_init();
	TWI0_init();
	RTC_init();
	CLOCK_init();
	
	sei();
	
	char *buffer = malloc(sizeof(char) * 100);
	time_struct *real_time = malloc(sizeof(time_struct));
	time_struct *clock_time = malloc(sizeof(time_struct));
	uint8_t last_pulse;

	USART0_puts("\r\n\nHello, this is sclock " VERSION "!\r\n");

	uint8_t use_rtc = VPORTA.IN & CLOCK_PIN_CONFIG;					// Is CLOCK_PIN_CONFIG pressed?
	PORTA.PIN7CTRL = PORT_PULLUPEN_bm | PORT_ISC_INPUT_DISABLE_gc;	// Disable input buffer for CLOCK_PIN_CONFIG, no longer needed
	
	if (use_rtc) {
		DS3231_read_time(real_time);
		DS3231_read_alarm1(clock_time);
		real_time->hours = real_time->hours % 12;
		last_pulse = (clock_time->hours / 12) + 1;
		clock_time->hours = clock_time->hours % 12;
		} else {
		USART0_puts("\r\nPress any key to move watch hand... ");
		USART0_receive();
		last_pulse = CLOCK_generate_pulse(1);

		USART0_puts("\r\nEnter current clock time [hh:mm]: ");
		USART0_gets(buffer, 5);
		clock_time->hours = strtol(buffer, NULL, 10) % 12;
		clock_time->hours = clock_time->hours + (last_pulse - 1) * 12;
		clock_time->minutes = strtol(buffer + 3, NULL, 10) % 60;
		clock_time->seconds = 0;
		DS3231_write_alarm1(clock_time);
		clock_time->hours = clock_time->hours % 12;

		USART0_puts("\r\nEnter real world time [hh:mm]: ");
		USART0_gets(buffer, 5);
		real_time->hours = strtol(buffer, NULL, 10) % 12;
		real_time->minutes = strtol(buffer + 3, NULL, 10) % 60;
		real_time->seconds = 0;
	}

	queue = (720 + (real_time->hours * 60 + real_time->minutes) - (clock_time->hours * 60 + clock_time->minutes)) % 720;
	sprintf(buffer, "\r\nClock has to move %d times!\r\nReal time:  %02d:%02d\r\nClock time: %02d:%02d\r\n", queue,
	real_time->hours, real_time->minutes,
	clock_time->hours, clock_time->minutes);
	USART0_puts(buffer);

	if (!use_rtc) {
		USART0_puts("\r\nPress any key to start clock... ");
		USART0_receive();
		DS3231_write_time(real_time);
	}
	
	free(real_time);
	free(buffer);
	
	USART0_disable();
	
	DS3231_enable_alarm2();							// Set Alarm2 mask to get alerted every minute
	DS3231_write_control((1 << DS3231_CTRL_INTCN)	// Enable alarm function on INT pin
	| (1 << DS3231_CTRL_A2IE));						// Activate Alarm2 interrupt
	DS3231_write_status(0);							// Clear interrupt flags
	
	CLOCK_enable_interrupt();
	
	while (1) {
		uint8_t status = DS3231_read_status();
		if (status & (1 << DS3231_STATUS_A2F)) {	// Check if DS3231 woke us with Alarm2
			DS3231_write_status(0);					// Clear interrupt flags
			queue++;
		}
		if (queue > 0) {
			while (TWI0.MSTATUS & TWI_BUSSTATE_OWNER_gc) {
				TWI0_stop();
			}
			last_pulse = CLOCK_generate_pulse(last_pulse);
			CLOCK_increment_time(clock_time, last_pulse);
			DS3231_write_alarm1(clock_time);
			queue--;
		}
		while (TWI0.MSTATUS & TWI_BUSSTATE_OWNER_gc) {
			TWI0_stop();
		}
		if (queue > 0) {
			RTC_sleep(RTC_MS_TO_PERIOD(500));
			} else {
			SLPCTRL.CTRLA = SLPCTRL_SMODE_PDOWN_gc | SLPCTRL_SEN_bm;
			sleep_cpu();
			SLPCTRL.CTRLA = 0;
		}
		//TWI0.MCTRLB |= TWI_FLUSH_bm;
		//TWI0.MSTATUS |= TWI_BUSSTATE_IDLE_gc;
	}
}

ISR(PORTA_PORT_vect) {
	VPORTA.INTFLAGS |= CLOCK_PIN_INT;
}
