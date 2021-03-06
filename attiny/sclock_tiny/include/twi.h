#ifndef TWI_H_
#define TWI_H_

#include <avr/io.h>

#define TWI0_BAUD(F_SCL, T_RISE) ((((((float)F_CPU / (float)F_SCL)) - 10 - ((float)F_CPU * T_RISE / 1000000))) / 2)

void TWI0_init(void);

uint8_t TWI0_start(uint8_t address);

void TWI0_stop(void);

uint8_t TWI0_read(uint8_t ack);

uint8_t TWI0_write(uint8_t data);

#endif /* TWI_H_ */