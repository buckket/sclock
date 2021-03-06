#ifndef USART_H_
#define USART_H_

#include <avr/io.h>

#define USART0_BAUD_RATE(BAUD_RATE) ((float)(F_CPU * 64 / (16 * (float)BAUD_RATE)) + 0.5)

void USART0_init(void);

void USART0_disable(void);

void USART0_transmit(uint8_t data);

void USART0_puts(char *string);

uint8_t USART0_receive(void);

uint8_t USART0_gets(char *buf, uint8_t len);

#endif /* USART_H_ */