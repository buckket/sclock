#include "uart.h"


void uart_init(void) {
    // Set baud rate
    UBRR0 = 103;

    // Enable transmitter and receiver
    UCSR0B = (1 << RXEN0) | (1 << TXEN0);

    // Set default data format (8N1)
    UCSR0C = (1 << UCSZ00) | (1 << UCSZ01);
}


void uart_transmit(uint8_t data) {
    // Wait for empty transmit buffer
    while (!(UCSR0A & (1 << UDRE0)));

    // Put data into buffer, send the data
    UDR0 = data;

    // Wait till data transfer is complete
    while (!(UCSR0A & (1 << TXC0)));

    // Clear flag
    UCSR0A |= (1 << TXC0);
}


void uart_puts(char *string) {
    while (*string) {
        uart_transmit((uint8_t) *string);
        string++;
    }
}


uint8_t uart_receive(void) {
    while (!(UCSR0A & (1 << RXC0)));
    return UDR0;
}


uint8_t uart_gets(char *buf, uint8_t len) {
    uint8_t next;
    uint8_t i = 0;

    for (i = 0; i < len; i++) {
        next = uart_receive();
        *buf++ = next;

        if (next == '\n') {
            uart_receive();
            break;
        }
    }

    *buf = '\0';
    return i;
}
