// monitor a digital input pin PORTXbits.RXn for changes
//
// Usually connect a button to this pin but any square wave input will do. 
// 

#include "buttons.h"


// global variable holds the current state of the button. Initially assumed to be off.
//
// Usually you won't want to access this since we are interested in edges.
// If you do want to use it in you main.c function, you must have a line
//
// declare extern unsigned char last_switch1_edge; 
//
// in main.c so that the compiler knows where it is
// 
unsigned char last_switch1_value = 0;    // last button value, initalized to low 
     				         // global variable
unsigned char last_switch2_value = 0;

// returns 0 if no edge has happened
// returns 1 at a rising edge
// returns 2 at a falling edge
//
//
unsigned char monitor_switch1_for_edges(unsigned char digitalinputpin) 
{ 

    unsigned char has_switch1_changed = 0;  // 0 = no change; 1 = rising edge; 1 = falling edge

    if (last_switch1_value == 0 && digitalinputpin) 
    {                // rising edge detected if digitalinputpin is 1 (on) 
        last_switch1_value = 1;   // save current switch value (on)
        has_switch1_changed = 1;  // found a rising edge
    } 
    if (last_switch1_value == 1 && !digitalinputpin) 
    {                // falling edge detected if digitalinputpin is 0 (off) 
        last_switch1_value = 0;   // save current switch value (off)
        has_switch1_changed = 2;  // found a falling edge
    } 

    return has_switch1_changed; 
} 


unsigned char monitor_switch2_for_edges(unsigned char digitalinputpin) 
{ 

    unsigned char has_switch2_changed = 0;  // 0 = no change; 1 = rising edge; 1 = falling edge

    if (last_switch2_value == 0 && digitalinputpin) 
    {                // rising edge detected if digitalinputpin is 1 (on) 
        last_switch2_value = 1;   // save current switch value (on)
        has_switch2_changed = 1;  // found a rising edge
    } 
    if (last_switch2_value == 1 && !digitalinputpin) 
    {                // falling edge detected if digitalinputpin is 0 (off) 
        last_switch2_value = 0;   // save current switch value (off)
        has_switch2_changed = 2;  // found a falling edge
    } 

    return has_switch2_changed; 
} 
