#ifndef BUTTON_H_
#define BUTTON_H_

#include <avr/io.h>
#include <avr/interrupt.h>

uint8_t BUTTON_get_key_press(uint8_t key_mask);

#endif /* BUTTON_H_ */
