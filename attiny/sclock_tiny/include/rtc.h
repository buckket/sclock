#ifndef RTC_H_
#define RTC_H_

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>

#define RTC_MS_TO_PERIOD(MS) (uint16_t)(MS * 1.024)

void RTC_init(void);

void RTC_sleep(uint16_t period);

void RTC_PIR_enable(void);

void RTC_PIR_disable(void);

#endif /* RTC_H_ */
