#include "timer.h"
#include <util/delay.h> //DEBUG
 


int main (void)
{
  // set PB1 to be output
  DDRB = (1 << PB2);
  DDRA = _BV(PA5);
  setup_timer_intr();

  PORTB = (1 << PB2);

  PORTB |= _BV(PB2);   //set CE HIGH
  _delay_ms(250);
  PORTB &= ~_BV(PB2);   //set CE low
  _delay_ms(250);


  while(1){
    /*
    PORTB |= _BV(PB2);   //set CE HIGH
  _delay_ms(250);
  PORTB &= ~_BV(PB2);   //set CE low
  _delay_ms(250);
*/
  if(i > 100000){
      while(1){
        PORTB |= _BV(PB2);   //set CE HIGH
      }
  }
  
  }
  return 1;
}
