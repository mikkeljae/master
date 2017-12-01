#include "timer.h"

void setup_timer_intr(void){
	cli();                // Disable global interrupts
	TCCR1A = 0;           // Set TCCR1A to 0x00 (normal op.), p. 108
	TCCR1B = _BV(WGM12) | _BV(CS10); // Clear Timer on Compare, no pre scaling
	OCR1A  = 1280;        // Compare value
	TCNT1  = 0;           // Reset timer1
	TIMSK1 = _BV(OCIE1A); // Output compare A, interrupt, p. 113
	sei();                // Enable global interripts	
}
