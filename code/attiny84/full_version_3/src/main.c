#include "spi.h"
#include "external_interrupts.h"
#include "timer.h"


char test_str_i[6];
char test_str_pos[6];

int main(void) {
  uint16_t i = 0;
  uint8_t payload[PAYLOAD_SIZE];
  // set PB2 to be output
  DDRB |= (1 << LED);     //Set LED as output
  
  // Wait 5 seconds in order to let the user toggle the switch
  _delay_ms(5000);
  PORTB |= _BV(LED);   //set CE HIGH
  _delay_ms(250);
  PORTB &= ~_BV(LED);   //set CE low
  _delay_ms(250);

  spi_setup();
  RF_begin();
  RF_open_writing_pipe();
  RF_start_TX_mode();
  RF_write_payload(payload, 32);
 

  setup_external_int();
  PORTB |= _BV(LED);   //set CE HIGH
  _delay_ms(3000);
  PORTB &= ~_BV(LED);   //set CE low
  _delay_ms(100);

  setup_timer_intr();

  i = 0;
  while(1){
  	if(i >10000){
  		  PORTB |= _BV(LED);   //set CE HIGH
  		  while(1){
  		  	//STAY!!!!
  		  }
  	}
   
    if(timer==1){ 
      timer = 0;
      i++;  
      set_CE(LOW);

      payload[0] = (i >> 8) & 0xFF;
      payload[1] = i & 0xFF;

      //payload[0] = (position >> 8) & 0xFF;
      //payload[1] = position & 0xFF;

      if(calibrated){
       // payload[0] |= CAL_BIT;
      }

      RF_write_payload(payload, 2);

      set_CE(HIGH);
      
      // Then wait. 130us according to datasheet p. 22
    }
  }

  return 1;
};





