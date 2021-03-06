#include "rtc.h"


void RTC_init(void) {
	// Wait for RTC to get ready after RESET
	while (RTC.STATUS > 0);
	
	// Select internal 1kHz oscillator
	RTC.CLKSEL = RTC_CLKSEL_INT1K_gc;
	
	// Run in DEBUG mode
	RTC.DBGCTRL = RTC_DBGRUN_bm;
	
	// Set prescaler to 1, and enable run in standby
	RTC.CTRLA = RTC_PRESCALER_DIV1_gc | RTC_RUNSTDBY_bm;
	
	// Enable overflow interrupt
	RTC.INTCTRL |= RTC_OVF_bm;
}

void RTC_sleep(uint16_t period) {
	// Set sleep mode
	SLPCTRL.CTRLA = SLPCTRL_SMODE_STDBY_gc | SLPCTRL_SEN_bm;
		
	// Set period
	while (RTC.STATUS & RTC_PERBUSY_bm);
	RTC.PER = period;
	
	// Clear interrupt flags
	RTC.INTFLAGS = RTC_OVF_bm;
	
	// Enable RTC
	while (RTC.STATUS & RTC_CTRLABUSY_bm);
	RTC.CTRLA |= RTC_RTCEN_bm;

	// Enter sleep mode
	sleep_cpu();
	
	// Wait till we see the right interrupt flag, in case we woke up early
	while(!(RTC.INTFLAGS & RTC_OVF_bm));
	
	// Clear interrupt flags
	RTC.INTFLAGS = RTC_OVF_bm;

	// Disable RTC
	RTC.CTRLA &= ~RTC_RTCEN_bm;
	
	// Reset counter
	while (RTC.STATUS & RTC_CNTBUSY_bm);
	RTC.CNT = 0;
	
	// Disable sleep mode
	SLPCTRL.CTRLA = 0;
}

ISR(RTC_CNT_vect) {
}
