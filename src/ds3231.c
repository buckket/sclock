#include "ds3231.h"


static uint8_t bcd_to_bin(uint8_t val) { return val - 6 * (val >> 4); }

static uint8_t bin_to_bcd(uint8_t val) { return val + 6 * (val / 10); }

void rtc_enable_alarm2(void) {
    twi_start(ADDRESS_WRITE);
    twi_write(0xB); // Set pointer to Alarm2 Register
    twi_write(1 << 7); // Enable A2M2
    twi_write(1 << 7); // Enable A2M3
    twi_write(1 << 7); // Enable A2M4
    twi_stop();
}

uint8_t rtc_read_control(void) {
    twi_start(ADDRESS_WRITE);
    twi_write(0xE); // Set pointer to Control Register
    twi_stop();

    twi_start(ADDRESS_READ);
    uint8_t control = twi_read(0);
    twi_stop();

    return control;
}

void rtc_write_control(uint8_t control) {
    twi_start(ADDRESS_WRITE);
    twi_write(0xE); // Set pointer to Control Register
    twi_write(control);
    twi_stop();
}

uint8_t rtc_read_status(void) {
    twi_start(ADDRESS_WRITE);
    twi_write(0xF); // Set pointer to Status Register
    twi_stop();

    twi_start(ADDRESS_READ);
    uint8_t status = twi_read(0);
    twi_stop();

    return status;
}

void rtc_write_status(uint8_t status) {
    twi_start(ADDRESS_WRITE);
    twi_write(0xF); // Set pointer to Status Register
    twi_write(status);
    twi_stop();
}


void rtc_read_time(time_struct *clock) {
    twi_start(ADDRESS_WRITE);
    twi_write(0x0); // Set pointer to zero
    twi_stop();

    twi_start(ADDRESS_READ);
    clock->seconds = bcd_to_bin(twi_read(1));
    clock->minutes = bcd_to_bin(twi_read(1));
    clock->hours = bcd_to_bin(twi_read(0));
    twi_stop();
}


void rtc_write_time(time_struct *clock) {
    twi_start(ADDRESS_WRITE);
    twi_write(0x0); // Set pointer to zero
    twi_write(bin_to_bcd(clock->seconds));
    twi_write(bin_to_bcd(clock->minutes));
    twi_write(bin_to_bcd(clock->hours));
    twi_stop();
}

void rtc_read_alarm1(time_struct *clock) {
    twi_start(ADDRESS_WRITE);
    twi_write(0x7); // Set pointer to ALARM1
    twi_stop();

    twi_start(ADDRESS_READ);
    clock->seconds = bcd_to_bin(twi_read(1));
    clock->minutes = bcd_to_bin(twi_read(1));
    clock->hours = bcd_to_bin(twi_read(0));
    twi_stop();
}


void rtc_write_alarm1(time_struct *clock) {
    twi_start(ADDRESS_WRITE);
    twi_write(0x7); // Set pointer to ALARM1
    twi_write(bin_to_bcd(clock->seconds));
    twi_write(bin_to_bcd(clock->minutes));
    twi_write(bin_to_bcd(clock->hours));
    twi_stop();
}
