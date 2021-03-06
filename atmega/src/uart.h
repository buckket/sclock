#ifndef SCLOCK_UART_H
#define SCLOCK_UART_H

#include <avr/io.h>

void uart_init(void);

void uart_transmit(uint8_t data);

void uart_puts(char *string);

uint8_t uart_receive(void);

uint8_t uart_gets(char *buf, uint8_t len);

#endif //SCLOCK_UART_H
