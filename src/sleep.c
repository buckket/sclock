#include "sleep.h"


void enter_sleep(void) {
    // Only an external reset, a watchdog system reset, a watchdog interrupt, a brown-out reset,
    // a 2-wire serial interface address match, an external level interrupt on INT0 or INT1,
    // or a pin change interrupt can wake up the MCU.

    // This sleep mode basically halts all generated clocks,
    // allowing operation of asynchronous modules only.
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);

    // Set SE bit
    sleep_enable();

    // Really go to sleep now
    sleep_cpu();

    // Remove SE bit
    sleep_disable();
}
