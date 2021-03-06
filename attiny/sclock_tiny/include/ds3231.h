#ifndef DS3231_H_
#define DS3231_H_

#include "clock.h"
#include "twi.h"

#define DS3231_ADDRESS_WRITE	0xD0
#define DS3231_ADDRESS_READ		0xD1

#define DS3231_CTRL_A1IE		0
#define DS3231_CTRL_A2IE		1
#define DS3231_CTRL_INTCN		2
#define DS3231_CTRL_RS1			3
#define DS3231_CTRL_RS2			4
#define DS3231_CTRL_CONV		5
#define DS3231_CTRL_BBSQW		6
#define DS3231_CTRL_EOSC		7

#define DS3231_STATUS_A1F		0
#define DS3231_STATUS_A2F		1
#define DS3231_STATUS_BSY		2
#define DS3231_STATUS_EN32KHZ	3
#define DS3231_STATUS_OSF		7

void DS3231_enable_alarm2(void);

uint8_t DS3231_read_control(void);

void DS3231_write_control(uint8_t control);

uint8_t DS3231_read_status(void);

void DS3231_write_status(uint8_t status);

void DS3231_read_time(time_struct *clock);

void DS3231_write_time(time_struct *clock);

void DS3231_read_alarm1(time_struct *clock);

void DS3231_write_alarm1(time_struct *clock);

#endif /* DS3231_H_ */