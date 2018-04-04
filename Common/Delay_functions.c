#include <Delay_functions.h>
#include <xc.h>
void WaitOneSecond(void)//Rudely Stolen from Dan Peirce & Mike Coombes
{
int  i = 0;
for(i=0; i<=80; i++) 
   {
    _delay(100000ul);  // 100 000 * 4 / 32 000 000 = 1/80 s 
   }
}

void WaitQuarterSecond(void)//Rudely Stolen from Dan Peirce & Mike Coombes
{
int  i = 0;
for(i=0; i<=20; i++) 
   {
    _delay(100000ul);  // 100 000 * 4 / 32 000 000 = 1/80 s 
   }
}

void WaitAnySecond(float delay){//takes a delay to wait in seconds // Rudely modified from Dan Peirce & Mike Coombes code


delay *= 80; //converts to computer ticks

for(delay; delay>0; delay--) //waits a 80th of a second that many times
	{
	_delay(100000ul);
	}
}
