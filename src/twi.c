#include "twi.h"


void twi_init(void) {
    // SCL freq = (F_CPU) / (16 + 2(TWBR) * (PrescalerValue))
    // 400 kHz = (16MHz) / (16 + 2(12) * (1))
    TWBR = 12;
    TWSR = 0;
}


uint8_t twi_start(uint8_t address) {
    TWCR = 0; // Reset bus

    TWCR = (1 << TWINT) | (1 << TWSTA) | (1 << TWEN); // Enable TWI and send START condition
    while (!(TWCR & (1 << TWINT))); // Wait for end of transmission

    if (TW_STATUS != TW_START) { return 1; } // Check if START condition was successful

    TWDR = address; // Load slave address into data register
    TWCR = (1 << TWINT) | (1 << TWEN); // Enable TWI and send data
    while (!(TWCR & (1 << TWINT))); // Wait for end of transmission

    // Check if slave acknowledged READ/WRITE mode
    if ((TW_STATUS != TW_MT_SLA_ACK) && (TW_STATUS != TW_MR_SLA_ACK)) { return 1; }

    return 0;
}


void twi_stop(void) {
    TWCR = (1 << TWINT) | (1 << TWEN) | (1 << TWSTO); //  Enable TWI and send STOP condition
}


uint8_t twi_write(uint8_t data) {
    TWDR = data; // Load data into data register
    TWCR = (1 << TWINT) | (1 << TWEN); // Enable TWI and send data
    while (!(TWCR & (1 << TWINT))); // Wait for end of transmission
    if (TW_STATUS != TW_MT_DATA_ACK) { return 1; } // Check if slave acknowledged data
    return 0;
}


uint8_t twi_read(uint8_t ack) {
    TWCR = (1 << TWINT) | (1 << TWEN) | (ack << TWEA); // Enable TWI and receive data
    while (!(TWCR & (1 << TWINT))); // Wait for end of transmission
    return TWDR;
}
