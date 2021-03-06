#include "usart.h"


void USART0_init(void) {
	// Set PB3 as Input (RX), PB2 as Output (TX)
	VPORTB.DIR &= ~PIN3_bm;
	VPORTB.DIR |= PIN2_bm;
	
	// Set Baud rate
	USART0.BAUD = (uint16_t)USART0_BAUD_RATE(9600);
	
	// Enable RX and TX module
	USART0.CTRLB |= USART_RXEN_bm | USART_TXEN_bm;
}

void USART0_disable(void) {
	// Disable RX/TX modules
	USART0.CTRLB = 0;
	
	// Set RX/TX pins as inputs
	VPORTB.DIR &= ~(PIN2_bm | PIN3_bm);
	
	// Enable pull-up and disable input buffer for RX/TX pins
	PORTB.PIN2CTRL = PORT_PULLUPEN_bm | PORT_ISC_INPUT_DISABLE_gc;
	PORTB.PIN3CTRL = PORT_PULLUPEN_bm | PORT_ISC_INPUT_DISABLE_gc;
}

void USART0_transmit(uint8_t data) {
	// Wait for empty transmit buffer
	while (!(USART0.STATUS & USART_DREIF_bm));
	
	// Put data into transmit buffer
	USART0.TXDATAL = data;
	
	// Wait till data transfer is complete
	while (!(USART0.STATUS & USART_TXCIF_bm));
	
	// Clear USART Transmit Complete Interrupt Flag
	USART0.STATUS |= USART_TXCIF_bm;
}

void USART0_puts(char *string) {
	while (*string) {
		USART0_transmit((uint8_t)*string);
		string++;
	}
}

uint8_t USART0_receive(void) {
	// Wait for new data in receive buffer
	while (!(USART0.STATUS & USART_RXCIF_bm));
	
	// Read receive buffer
	return USART0.RXDATAL;
}

uint8_t USART0_gets(char *buf, uint8_t len) {
	uint8_t next, i;
	for (i = 0; i < len; i++) {
		next = USART0_receive();
		*buf++ = next;
		
		if (next == '\n') {
			USART0_receive();
			break;
		}
	}
	*buf = '\0';
	return i;
}
