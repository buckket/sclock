#include "clock.h"


void setup_pins(void) {
    // Set CLOCK_PIN_SHDN, CLOCK_PIN1 and CLOCK_PIN2 as output
    DDRB |= (1 << CLOCK_PIN_SHDN) | (1 << CLOCK_PIN1) | (1 << CLOCK_PIN2);

    DDRD &= ~((1 << PD2) | (1 << PD3)); // Set PD2, PD3 as inputs (INT0, JP0)
    PORTD |= (1 << PD2) | (1 << PD3);   // Enable internal pull-up on PD2, PD3
}


void enable_24v(void) {
    PORTB |= (1 << CLOCK_PIN_SHDN);     // Enable MAX629 (High)
    _delay_ms(25);                  // Give IC time to get ready
}


void disable_24v(void) {
    PORTB &= ~(1 << CLOCK_PIN_SHDN);    // Disable MAX629 (Low)
}


uint8_t generate_clock_pulse(uint8_t last_pulse) {
    if (last_pulse == 1) {
        PORTB &= ~(1 << CLOCK_PIN1);    // Set CLOCK_PIN1 to Low
        enable_24v();
        PORTB |= (1 << CLOCK_PIN2);     // Set CLOCK_PIN2 to High
        _delay_ms(CLOCK_PULSE);         // Wait for CLOCK_PULSE (ms)
        PORTB &= ~(1 << CLOCK_PIN2);    // Set CLOCK_PIN2 to Low
        disable_24v();
        return 2;
    } else if (last_pulse == 2) {
        PORTB &= ~(1 << CLOCK_PIN2);    // Set CLOCK_PIN2 to Low
        enable_24v();
        PORTB |= (1 << CLOCK_PIN1);     // Set CLOCK_PIN1 to High
        _delay_ms(CLOCK_PULSE);         // Wait for CLOCK_PULSE (ms)
        PORTB &= ~(1 << CLOCK_PIN1);    // Set CLOCK_PIN1 to Low
        disable_24v();
        return 1;
    }
    return 0;
}


void enable_clock_interrupt(void) {
    //EICRA |= (1 << ISC01) | (1 << ISC00);     // The rising edge of INT0 generates an interrupt request
    EICRA &= ~((1 << ISC01) | (1 << ISC00));    // Low level on INT0 generates an interrupt request
    EIMSK |= (1 << INT0);                       // Enable external interrupt INT0
}


void increment_time(time_struct *clock, uint8_t last_pulse) {
    clock->minutes = (clock->minutes + 1) % 60;
    if (clock->minutes == 0) {
        clock->hours = (clock->hours + 1) % 12;
    }
    clock->hours = (clock->hours % 12) + (last_pulse - 1) * 12;
}
