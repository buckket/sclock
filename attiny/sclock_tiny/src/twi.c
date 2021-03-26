#include "twi.h"

void TWI0_init(void) {
    #ifdef _DEBUG
    // Enable Debug mode
    TWI0.DBGCTRL = TWI_DBGRUN_bm;
    #endif

    TWI0.MBAUD = (uint8_t)TWI0_BAUD(100000, 0);

    TWI0.MCTRLA = TWI_ENABLE_bm;
    TWI0.MSTATUS = TWI_BUSSTATE_IDLE_gc;
}

uint8_t TWI0_start(uint8_t address) {
    // Set address
    TWI0.MADDR = address;
    while (!(TWI0.MSTATUS & (TWI_WIF_bm | TWI_RIF_bm)));

    if (TWI0.MSTATUS & TWI_ARBLOST_bm) {
        // Arbitration Lost or Bus Error
        // Wait for bus to change back to idle
        while (!(TWI0.MSTATUS & TWI_BUSSTATE_IDLE_gc));
        return 1;
    } else if (TWI0.MSTATUS & TWI_RXACK_bm) {
        // Address not Acknowledged by Client
        // Send stop condition and wait for bus to change back to idle
        TWI0.MCTRLB |= TWI_MCMD_STOP_gc;
        while (!(TWI0.MSTATUS & TWI_BUSSTATE_IDLE_gc));
        return 1;
    }

    // Clear WIF, which was sent in TX mode
    TWI0.MSTATUS |= TWI_WIF_bm;

    // Prime first transaction
    TWI0.MCTRLB = TWI_MCMD_RECVTRANS_gc;

    return 0;
}

void TWI0_stop(void) {
    // Send stop condition
    TWI0.MCTRLB |= TWI_MCMD_STOP_gc;

    // Wait for bus to return to idle state
    while (!(TWI0.MSTATUS & TWI_BUSSTATE_IDLE_gc));
}

uint8_t TWI0_read(uint8_t ack) {
    // Wait for incoming data
    while (!(TWI0.MSTATUS & TWI_RIF_bm));

    if (ack) {
        // Send ACK and receive more data
        TWI0.MCTRLB = TWI_MCMD_RECVTRANS_gc;
    } else {
        // Prepare to send NACK to indicate no more data is needed
        // NACK gets send be either issuing a stop condition or sending a new address packet
        TWI0.MCTRLB = TWI_ACKACT_NACK_gc;
    }

    return TWI0.MDATA;
}

uint8_t TWI0_write(uint8_t data) {
    // Prime transaction
    TWI0.MCTRLB = TWI_MCMD_RECVTRANS_gc;

    // Send data
    TWI0.MDATA = data;

    // Wait for write to be complete
    while (!(TWI0.MSTATUS & TWI_WIF_bm));

    // RXACK is only valid if ARBLOST and BUSERR flags are not set
    // Return 1 if either one of them is set to indicate a failed transmission
    if (TWI0.MSTATUS & (TWI_ARBLOST_bm | TWI_BUSERR_bm)) return 1;

    // Return RXACK flag
    return (TWI0.MSTATUS & TWI_RXACK_bm);
}
