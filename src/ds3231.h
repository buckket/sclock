#ifndef AVR_CLOCK_DS3231_H
#define AVR_CLOCK_DS3231_H

#include "clock.h"
#include "twi.h"

#define ADDRESS_WRITE   0xD0
#define ADDRESS_READ    0xD1

void rtc_enable_sqw(void);

void rtc_read_time(time_struct *clock);

void rtc_write_time(time_struct *clock);

void rtc_read_alarm1(time_struct *clock);

void rtc_write_alarm1(time_struct *clock);

uint8_t rtc_read_status(void);

#endif // AVR_CLOCK_DS3231_H
