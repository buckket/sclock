#include "clock.h"

static inline void enable_24v(void) {
	VPORTA.OUT |= CLOCK_PIN_SHDN;					// Enable MAX629 (High)
}

static inline void disable_24v(void) {
	VPORTA.OUT &= ~CLOCK_PIN_SHDN;					// Disable MAX629 (Low)
}

void CLOCK_init(void) {
	// Set CLOCK_PIN_SHDN, CLOCK_PIN1 and CLOCK_PIN2 as output
	VPORTA.DIR |= CLOCK_PIN_SHDN | CLOCK_PIN1 | CLOCK_PIN2;

	// Set CLOCK_PIN_CONFIG and CLOCK_PIN_INT as input
	VPORTA.DIR &= ~(CLOCK_PIN_CONFIG | CLOCK_PIN_INT);

	// Enable pull-ups for CLOCK_PIN_INT and CLOCK_PIN_CONFIG
	PORTA.PIN6CTRL = PORT_PULLUPEN_bm;
	PORTA.PIN7CTRL = PORT_PULLUPEN_bm;

	// Define unused pins as inputs
	VPORTA.DIR &= ~(PIN4_bm | PIN5_bm);

	// Enable pull-ups and disable input buffer for unused pins
	PORTA.PIN4CTRL = PORT_PULLUPEN_bm | PORT_ISC_INPUT_DISABLE_gc;
	PORTA.PIN5CTRL = PORT_PULLUPEN_bm | PORT_ISC_INPUT_DISABLE_gc;
}

uint8_t CLOCK_generate_pulse(uint8_t last_pulse) {
	if (last_pulse == 1) {
		VPORTA.OUT &= ~CLOCK_PIN1;					// Set CLOCK_PIN1 to Low
		enable_24v();
		RTC_sleep(RTC_MS_TO_PERIOD(CLOCK_VWAIT));	// Give power supply some time to get ready
		VPORTA.OUT |= CLOCK_PIN2;					// Set CLOCK_PIN2 to High
		RTC_sleep(RTC_MS_TO_PERIOD(CLOCK_PULSE));	// Wait for CLOCK_PULSE
		VPORTA.OUT &= ~CLOCK_PIN2;					// Set CLOCK_PIN2 to Low
		disable_24v();
		return 2;
	} else if (last_pulse == 2) {
		VPORTA.OUT &= ~CLOCK_PIN2;					// Set CLOCK_PIN2 to Low
		enable_24v();
		RTC_sleep(RTC_MS_TO_PERIOD(CLOCK_VWAIT));	// Give power supply some time to get ready
		VPORTA.OUT |= CLOCK_PIN1;					// Set CLOCK_PIN1 to High
		RTC_sleep(RTC_MS_TO_PERIOD(CLOCK_PULSE));	// Wait for CLOCK_PULSE
		VPORTA.OUT &= ~CLOCK_PIN1;					// Set CLOCK_PIN1 to Low
		disable_24v();
		return 1;
	}
	return 0;
}

void CLOCK_increment_time(time_struct *clock, uint8_t last_pulse) {
	clock->minutes = (clock->minutes + 1) % 60;
	if (clock->minutes == 0) {
		clock->hours = (clock->hours + 1) % 12;
	}
	clock->hours = (clock->hours % 12) + (last_pulse - 1) * 12;
}
