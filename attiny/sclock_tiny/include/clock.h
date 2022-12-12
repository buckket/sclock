#define CLOCK_H_

#include <avr/io.h>
#include <avr/sleep.h>

#include "rtc.h"
#include "button.h"

#define CLOCK_PULSE         100
#define CLOCK_VWAIT         25
#define CLOCK_COOLDOWN      500

#define CLOCK_PIN_SHDN      PIN1_bm
#define CLOCK_PIN1          PIN2_bm
#define CLOCK_PIN2          PIN3_bm

#define CLOCK_PIN_RESET     PIN5_bm
#define CLOCK_PIN_INT       PIN6_bm
#define CLOCK_PIN_CONFIG    PIN7_bm

typedef struct {
	uint8_t seconds;
	uint8_t minutes;
    uint8_t hours;
} time_struct;

void CLOCK_init(void);

uint8_t CLOCK_generate_pulse(uint8_t last_pulse);

inline void CLOCK_enable_interrupt(void) {
	PORTA.PIN6CTRL |= PORT_ISC_FALLING_gc;
}

inline void CLOCK_disable_interrupt(void) {
	PORTA.PIN6CTRL &= ~PORT_ISC_gm;
}

void CLOCK_increment_time(time_struct *clock, uint8_t last_pulse);

uint8_t CLOCK_count_press(void);

#endif /* CLOCK_H_ */
