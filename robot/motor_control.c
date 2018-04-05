#include "sumovore.h"
#include "motor_control.h"
#include <xc.h>
#include "Delay_functions.h"

//nice global variables

	int move_state; // 6 types of movement 1 spin left 2 turn left 3 stop 4 straight 5 turn right 6 spin right 7 u turn babeee
	int memory; //toggle that will allow robot to follow extrenious lines
	int side_mem; //memory for which side sensors the robot is currently following
	int tmr_state; //1 timer is hot 0 timer is cold
    int count; //brute force this bitch

/* reference material:

	SeeLine.b.Left 
        SeeLine.b.CntLeft
        SeeLine.b.Center 
        SeeLine.b.CntRight 
        SeeLine.b.Right

*/
	
void follow_simple_curves(void);
void spin_left(void);
void turn_left(void);
void straight_fwd(void);
void turn_right(void);
void spin_right(void);

void full_stp(void){
  set_motor_speed(left, stop, 0); 
  set_motor_speed(right, stop, 0); 
}

void pirouette_left(void){
  set_motor_speed(left, rev_slow, 0); 
  set_motor_speed(right, slow, 0); 
}
void pirouette_right(void){
  set_motor_speed(left, slow, 0); 
  set_motor_speed(right, rev_slow, 0); 
}

void start_tmr(){
	TMR0IF = 0;
	WriteTimer0(0u);
	tmr_state = 1;

}

void clr_tmr(){
	TMR0IF = 0;
	tmr_state = 0;
}
void start_tmr1(){
	TMR0IF = 0;
	WriteTimer0(63000u);
	tmr_state = 1;

}

void set_directive(int directive)
{

	if(directive==0){
	pirouette_left();
	move_state=0;
	}	
	if(directive==1){
	spin_left();
	move_state=1;
	}
	if(directive==2){
	turn_left();
	move_state=2;
	}	
	if(directive==3){
	full_stp();
	move_state=3;
	}
	if(directive==4){
	straight_fwd();
	move_state=4;
	}
	if(directive==5){
	turn_right();
	move_state=5;
	}	
	if(directive==6){
	spin_right();
	move_state=6;
	}
	if(directive==7){
	pirouette_right();
	move_state=7; 
	}


}
check_state(){
check_sensors(); 
set_leds();
}
void clr_mem(void){
memory = 0;
}

void set_mem(void){
memory = 1;
}




void change_track(void){
	if(SeeLine.b.Left==1&&SeeLine.b.CntLeft==0&&SeeLine.b.Center==1){//change to left track

		set_directive(1);
		while(SeeLine.b.Center!=0);
		set_directive(1);
		while(SeeLine.b.Center!=1);
		clr_mem();
	}
	if(SeeLine.b.Left==1&&SeeLine.b.CntLeft==0&&SeeLine.b.Center==1){//change to right track
	
		set_directive(6);
		while(SeeLine.b.Center!=0);
		set_directive(6);
		while(SeeLine.b.Center!=1);
		clr_mem();
	}
     
}





void motor_control(void)
{
     // same as followcurves() but... its 'advaaanced' :P
    
    if(SeeLine.B != 0b00000 && SeeLine.B != 0b11111)if(tmr_state != 0)clr_tmr();
    
     switch(SeeLine.B)
     {
        case 0b00100u:
		if(move_state!=4)set_directive(4);
        
		break;

        case 0b10100u:
		if(memory==0)
			if(move_state!=4)
				set_directive(4);
		else if(memory==1)
			{
			//change_track();
			}	
		break;

	case 0b01100u:
		if(move_state!=4)set_directive(4);
		//do nothing new cause track is not extrenious and robot can still move straight
		break;

	case 0b00110u:
		if(move_state!=4)set_directive(4);
		//do nothing new cause track is not extrenious and robot can still move straight
		break;

	case 0b00101u:
		if(memory==0)
			if(move_state!=4)
				set_directive(4);
		else if(memory==1)
			{
			change_track();
			}	
		break;

	case 0b11100u:
		if(memory==0)
			if(move_state!=4){
				set_directive(4);

			}

		else if(memory==1)
			{
			change_track();
			}
            count = 0;
    		side_mem = 1;
		break;

	case 0b00111u:
		if(memory==0)
			if(move_state!=4){
				set_directive(4);
			}

		else if(memory==1)
			{
			change_track();
			}
        
        count = 0;
    		side_mem = 3;
		break;
        case 0b11110u:
		if(memory==0)
			if(move_state!=4){
				set_directive(4);

			}

		else if(memory==1)
			{
			change_track();
			}
        count = 0;
    		side_mem = 1;
		break;

	case 0b01111u:
		if(memory==0)
			if(move_state!=4){
				set_directive(4);
			}

		else if(memory==1)
			{
			change_track();
			}	
            count = 0;
    		side_mem = 3;
		break;
	case 0b10111u:
		if(memory==0)
			if(move_state!=4){
				set_directive(4);
			}
		else if(memory==1)
			{
				change_track();
			}
            count = 0;
			side_mem = 3;
		break;

		case 0b11101u:
		if(memory==0)
			if(move_state!=4){
				set_directive(4);	
			}
		else if(memory==1)
			{
				change_track();
			}
        side_mem = 1;
        count = 0;
		break;


        case 0b00010u:
		if(move_state!=5)set_directive(5);
		break;

        case 0b01000u:
		if(move_state!=2)set_directive(2);
		break;

        case 0b00001u:
		if(move_state!=6)set_directive(6);
		break;		
		
        case 0b10000u:
		if(move_state!=1)set_directive(1);
		break;
        
         case 0b00000u:
             
             
            
             if(tmr_state!=1){
				if(move_state!=4)set_directive(4);
				start_tmr();
			}
             
            if(count<=500){
                if(side_mem==1)set_directive(0);
                if(side_mem==3)set_directive(7);
                side_mem=2;
                
            }
            
            
             
            /*
            if(tmr_state==1 && side_mem!=2 && ReadTimer0() < 20000){
                if(side_mem==1)set_directive(0);
                if(side_mem==3)set_directive(7);
                side_mem=2;
             }    
            */
            
            
            
            
            if(tmr_state==1 && ReadTimer0()>35000){
                
                    set_directive(0);
                    while(TMR0IF != 1||ReadTimer0()<20000);
                    clr_tmr();
                
                    
            }
            break;
         case 0b10001: 
                if(tmr_state==1 && side_mem!=2 && ReadTimer0() < 20000){
                if(side_mem==1)set_directive(0);
                if(side_mem==3)set_directive(7);
                side_mem=2;
             } 
        /*
        
        case 0b00000u:
		//while(SeeLine.b.Center != 1)
        //{

			if(tmr_state!=1){
				if(move_state!=4)set_directive(4);
				start_tmr();
			}

			if(tmr_state==1){

				if(ReadTimer0()<10767&&side_mem!=2){
					if(side_mem==1)
						if(move_state!=1)set_directive(0);
					if(side_mem==3)
						if(move_state!=3)set_directive(7);
                    while(SeeLine.b.Center!=1)check_state();
                    tmr_state=0;
                    
				}
		
				if(ReadTimer0()>20767){
					if(move_state!=7)set_directive(7);
					
					while(ReadTimer0()<=52100||TMR0IF!=1)check_state(); 
					set_directive(4);
                    tmr_state=0;
				}
			}
		//}
		clr_tmr();			
		break;
         */
        case 0b11111u:
		
			if(tmr_state!=1){
				if(move_state!=4)set_directive(4);
				start_tmr();
			}

			if(tmr_state==1){
				if(ReadTimer0()>15767){
					full_stp();
                    
					while(SeeLine.b.Center == 1)check_state();
				}
			}
            check_state(); 
		
		break;
        default:
		//should NEVER trigger
		break;
      }
     if(count<=5000){
     count++;
     }
}

void follow_simple_curves(void)
{
     if (SeeLine.b.Center) straight_fwd();
     else if (SeeLine.b.Left) spin_left();
     else if (SeeLine.b.CntLeft) turn_left();
     else if (SeeLine.b.CntRight) turn_right();
    else if (SeeLine.b.Right) spin_right();
}


void spin_left(void)
{
  set_motor_speed(left, rev_slow, 0); 
  set_motor_speed(right, slow, 0); 
}

void turn_left(void)
{
  set_motor_speed(left, stop, 0); 
  set_motor_speed(right, slow, 0); 
}
void straight_fwd(void)
{
  set_motor_speed(left, slow, 75); 
  set_motor_speed(right, slow, 0); 
}
void spin_right(void)
{
  set_motor_speed(left, slow, 0); 
  set_motor_speed(right, rev_slow, 0); 
}
void turn_right(void)
{
  set_motor_speed(left, slow, 0); 
  set_motor_speed(right, stop, 0); 
}
