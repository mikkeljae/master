#include "timer.h"


int i = 0;

int main (void)
{
  // set PB1 to be output
  DDRB = (1 << PB2);
  DDRA = _BV(PA5);
  setup_timer_intr();

  PORTB = (1 << PB2);
  while(1){
  
  }
  return 1;
}

/*
ISR(TIM1_COMPA_vect)
{ 
  if(i==0){
    PORTA = (1 << PA5);
    i = 1;
  }
  else{
    PORTA &= ~(1 << PA5);
    i = 0;
  }
}
*/