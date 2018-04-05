//very nice linking
extern	int move_state; // 6 types of movement 1 spin left 2 turn left 3 stop 4 straight 5 turn right 6 spin right
extern	int memory; //toggle that will allow robot to follow extrenious lines
extern	int side_mem; //memory for which side sensors the robot is currently following
extern	int tmr_state; //1 timer is hot 0 timer is cold
extern int count;

void motor_control(void);
