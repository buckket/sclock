#include "twi.h"


void TWI0_init(void) {
	// Enable pull-ups in case there are no external ones
	//PORTB.PIN0CTRL = PORT_PULLUPEN_bm;
	//PORTB.PIN1CTRL = PORT_PULLUPEN_bm;
	
	// Enable Debug mode
	TWI0.DBGCTRL = TWI_DBGRUN_bm;
	
	TWI0.MBAUD = (uint8_t)TWI0_BAUD(100000, 0);
	TWI0.MCTRLA = TWI_ENABLE_bm;
	TWI0.MSTATUS = TWI_BUSSTATE_IDLE_gc;
}

uint8_t TWI0_start(uint8_t address) {
	TWI0.MADDR = address;

	while (!(TWI0.MSTATUS & (TWI_WIF_bm | TWI_RIF_bm)));
	if ((TWI0.MSTATUS & TWI_ARBLOST_bm)) return 1;
	return TWI0.MSTATUS & TWI_RXACK_bm;
}

void TWI0_stop(void) {
	TWI0.MCTRLB |= TWI_MCMD_STOP_gc;
}

uint8_t TWI0_read(uint8_t ack) {
	while (!(TWI0.MSTATUS & TWI_RIF_bm));
	uint8_t data = TWI0.MDATA;
	if (ack) {
		TWI0.MCTRLB |= TWI_MCMD_RECVTRANS_gc;
	} else {
		TWI0.MCTRLB |= TWI_ACKACT_NACK_gc;
		TWI0.MCTRLB |= TWI_MCMD_STOP_gc;
	}
	return data;
}

uint8_t TWI0_write(uint8_t data) {
	while (!(TWI0.MSTATUS & TWI_WIF_bm));
	TWI0.MDATA = data;
	TWI0.MCTRLB = TWI_MCMD_RECVTRANS_gc; 
	return TWI0.MSTATUS & TWI_RXACK_bm;
}
