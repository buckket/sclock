#ifndef SCLOCK_CLOCK_H
#define SCLOCK_CLOCK_H

#include <avr/io.h>
#include <util/delay.h>

#define CLOCK_PULSE 250
#define CLOCK_PIN_SHDN PB1
#define CLOCK_PIN1 PB2
#define CLOCK_PIN2 PB3

typedef struct {
    volatile uint8_t seconds;
    volatile uint8_t minutes;
    volatile uint8_t hours;
} time_struct;

void setup_pins(void);

uint8_t generate_clock_pulse(uint8_t last_pulse);

void enable_clock_interrupt(void);

void increment_time(time_struct *clock);

#endif //SCLOCK_CLOCK_H
