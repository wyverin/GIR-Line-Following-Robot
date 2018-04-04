
//by -Gavin Heath
//SN -100258232

#include <xc.h>         // library of functions for this chip 
#include <stdio.h>      // library containing printf() function


void printCharAsBinary(unsigned char number) //prints char as binary
{

if ( ((number & 0b10000000) >> 7 ) == 1)
   printf("0b1");
else
   printf("0b0");

if ( ((number & 0b01000000) >> 6 ) == 1)
   printf("1");
else
   printf("0");


if ( ((number & 0b00100000) >> 5 ) == 1)
   printf("1");
else
   printf("0");


if ( ((number & 0b00010000) >> 4 ) == 1)
   printf("1");
else
   printf("0"); 


if ( ((number & 0b00001000) >> 3 ) == 1)
   printf("1");
else
   printf("0");


if ( ((number & 0b00000100) >> 2 ) == 1)
   printf("1");
else
   printf("0");

if ( ((number & 0b00000010) >> 1 ) == 1)
   printf("1");
else
   printf("0");


if ( ((number & 0b00000001) ) == 1)
   printf("1");
else
   printf("0");

}

void printIntAsBinary(unsigned int number){ //prints int as binary

    printf("0b");
    
    while(number>0){
        
        if((number%2) == 0)
        {
            printf("0");
        }
        else if((number%2) == 1)
        {
            printf("1");
        }
        number /= 2;
        
    }
    
}
