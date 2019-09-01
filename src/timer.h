#ifndef SCLOCK_TIMER_H
#define SCLOCK_TIMER_H

#include <avr/io.h>
#include <avr/interrupt.h>

void setup_timer(void);

void enable_timer(void);

void disable_timer(void);

#endif //SCLOCK_TIMER_H
