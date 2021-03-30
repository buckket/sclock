#include "ds3231.h"

static inline uint8_t bcd_to_bin(uint8_t val) { return val - 6 * (val >> 4); }

static inline uint8_t bin_to_bcd(uint8_t val) { return val + 6 * (val / 10); }

uint8_t DS3231_read_control(void) {
    TWI0_start(DS3231_ADDRESS_WRITE);
    TWI0_write(DS3231_REG_CONTROL);

    TWI0_start(DS3231_ADDRESS_READ);
    uint8_t control = TWI0_read(0);
    TWI0_stop();

    return control;
}

void DS3231_write_control(uint8_t control) {
    TWI0_start(DS3231_ADDRESS_WRITE);
    TWI0_write(DS3231_REG_CONTROL);
    TWI0_write(control);
    TWI0_stop();
}

uint8_t DS3231_read_status(void) {
    TWI0_start(DS3231_ADDRESS_WRITE);
    TWI0_write(DS3231_REG_STATUS);

    TWI0_start(DS3231_ADDRESS_READ);
    uint8_t status = TWI0_read(0);
    TWI0_stop();

    return status;
}

void DS3231_write_status(uint8_t status) {
    TWI0_start(DS3231_ADDRESS_WRITE);
    TWI0_write(DS3231_REG_STATUS);
    TWI0_write(status);
    TWI0_stop();
}

void DS3231_read_time(time_struct *clock) {
    TWI0_start(DS3231_ADDRESS_WRITE);
    TWI0_write(DS3231_REG_TIME);

    TWI0_start(DS3231_ADDRESS_READ);
    clock->seconds = bcd_to_bin(TWI0_read(1));
    clock->minutes = bcd_to_bin(TWI0_read(1));
    clock->hours = bcd_to_bin(TWI0_read(0));
    TWI0_stop();
}

void DS3231_write_time(time_struct *clock) {
    TWI0_start(DS3231_ADDRESS_WRITE);
    TWI0_write(DS3231_REG_TIME);
    TWI0_write(bin_to_bcd(clock->seconds));
    TWI0_write(bin_to_bcd(clock->minutes));
    TWI0_write(bin_to_bcd(clock->hours));
    TWI0_stop();
}

void DS3231_read_alarm1(time_struct *clock) {
    TWI0_start(DS3231_ADDRESS_WRITE);
    TWI0_write(DS3231_REG_ALARM1);

    TWI0_start(DS3231_ADDRESS_READ);
    clock->seconds = bcd_to_bin(TWI0_read(1));
    clock->minutes = bcd_to_bin(TWI0_read(1));
    clock->hours = bcd_to_bin(TWI0_read(0));
    TWI0_stop();
}

void DS3231_write_alarm1(time_struct *clock) {
    TWI0_start(DS3231_ADDRESS_WRITE);
    TWI0_write(DS3231_REG_ALARM1);
    TWI0_write(bin_to_bcd(clock->seconds));
    TWI0_write(bin_to_bcd(clock->minutes));
    TWI0_write(bin_to_bcd(clock->hours));
    TWI0_stop();
}

void DS3231_enable_alarm2(void) {
    TWI0_start(DS3231_ADDRESS_WRITE);
    TWI0_write(DS3231_REG_ALARM2);
    TWI0_write(1 << 7); // Enable A2M2
    TWI0_write(1 << 7); // Enable A2M3
    TWI0_write(1 << 7); // Enable A2M4
    TWI0_stop();
}
