#include "clkctrl.h"

int8_t CLKCTRL_init() {
	ccp_write_io((void *)&(CLKCTRL.MCLKCTRLB),
		CLKCTRL_PDIV_10X_gc /* 10 */
		| 1 << CLKCTRL_PEN_bp /* Prescaler enable: enabled */);

	ccp_write_io((void *)&(CLKCTRL.OSC32KCTRLA),
		1 << CLKCTRL_RUNSTDBY_bp /* Run in Standy for RTC */);

	return 0;
}
