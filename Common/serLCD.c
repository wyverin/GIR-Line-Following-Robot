//***************************************************************************************
// LCD_functions.c
//  
//
//
// Copied this cause I can
//
//***************************************************************************************

#include <stdio.h>          // library containing printf() function
#include <xc.h>
#include <serLCD.h>

void cleardisplay(void){ //clears and zeroes
printf("%c%c",0xFE,0x01);
}

void movetop(int column){ //move cursor to top row and position it in column
printf("%c%c",0xFE,128+column);
}

void movebottom(int column){  //move cursor to bottom row and position it in column
printf("%c%c",0xFE,128+64+column);
}
