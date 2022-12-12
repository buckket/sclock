#include "button.h"

volatile uint8_t key_state;
volatile uint8_t key_press;

ISR(RTC_PIT_vect) {
	RTC.PITINTFLAGS |= RTC_PI_bm;

	static uint8_t ct0 = 0xFF, ct1 = 0xFF;
	uint8_t i;

	i = key_state ^ ~VPORTA.IN;
	ct0 = ~(ct0 & i);
	ct1 = ct0 ^ (ct1 & i);
	i &= ct0 & ct1;

	key_state ^= i;
	key_press |= key_state & i;
}

uint8_t BUTTON_get_key_press(uint8_t key_mask) {
	cli();
	key_mask &= key_press;
	key_press ^= key_mask;
	sei();
	return key_mask;
}

uint8_t BUTTON_get_key_state(uint8_t key_mask) {
    key_mask &= key_state;
    return key_mask;
}
