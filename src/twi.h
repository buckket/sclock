#ifndef AVR_CLOCK_TWI_H
#define AVR_CLOCK_TWI_H

#include <avr/io.h>
#include <util/twi.h>

void twi_init(void);

uint8_t twi_start(uint8_t address);

void twi_stop(void);

uint8_t twi_write(uint8_t data);

uint8_t twi_read(uint8_t ack);

#endif // AVR_CLOCK_TWI_H
