#ifndef AVR_CLOCK_DS3231_H
#define AVR_CLOCK_DS3231_H

#include "clock.h"
#include "twi.h"

#define ADDRESS_WRITE   0xD0
#define ADDRESS_READ    0xD1

#define RTC_CTRL_A1IE 0
#define RTC_CTRL_A2IE 1
#define RTC_CTRL_INTCN 2
#define RTC_CTRL_RS1 3
#define RTC_CTRL_RS2 4
#define RTC_CTRL_CONV 5
#define RTC_CTRL_BBSQW 6
#define RTC_CTRL_EOSC 7

#define RTC_STATUS_A1F 0
#define RTC_STATUS_A2F 1
#define RTC_STATUS_BSY 2
#define RTC_STATUS_EN32KHZ 3
#define RTC_STATUS_OSF 7

void rtc_enable_alarm2(void);

uint8_t rtc_read_control(void);

void rtc_write_control(uint8_t control);

uint8_t rtc_read_status(void);

void rtc_write_status(uint8_t status);

void rtc_read_time(time_struct *clock);

void rtc_write_time(time_struct *clock);

void rtc_read_alarm1(time_struct *clock);

void rtc_write_alarm1(time_struct *clock);

#endif // AVR_CLOCK_DS3231_H
