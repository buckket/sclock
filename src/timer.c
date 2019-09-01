#include "timer.h"


volatile uint8_t seconds;


void setup_timer(void) {
    // Set up timer with Prescaler = 256 and enable CTC mode
    TCCR1B |= (1 << WGM12) | (1 << CS12);

    // Initialize counter
    TCNT1 = 0;

    // Initialize compare value
    OCR1A = 31249;
}


void enable_timer(void) {
    // Reset counter
    TCNT1 = 0;

    // Enable compare interrupt
    TIMSK1 |= (1 << OCIE1A);
}


void disable_timer(void) {
    // Disable compare interrupt
    TIMSK1 &= ~(1 << OCIE1A);
}
