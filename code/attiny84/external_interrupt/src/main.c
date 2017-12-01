
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

#define F_CPU     8000000
#define Z_pin     PA1
#define B_pin     PA2
#define A_pin     PA3

int main (void)
{

  cli();                // Disable global interrupts
  GIMSK = _BV(PCIE0);   // Enable interrupts on pins PCINT7:0
  GIFR = _BV(PCIF0);    // Setup pin change interrupt flag 0
  PCMSK0 = _BV(PCINT1);
  //PCMSK0 = _BV(PCINT1) | _BV(PCINT2) | _BV(PCINT3);   // Enable interrupts on PCINT1:3
  sei();                // Enable global interripts



  // set PB1 to be output
  DDRB = (1 << PB2);

  // set PB1 high
  PORTB = (1 << PB2);
  _delay_ms(100);

  // loop
  while (1) {

  }
 
  return 1;
}

 

ISR(PCINT0_vect)
{ 
  // set PB1 low
  PORTB &= ~(1 << PB2);

/*
  if(i==0){
    PORTA = (1 << PA5);
    i = 1;
  }
  else{
    PORTA &= ~(1 << PA5);
    i = 0;
  }
*/  
}