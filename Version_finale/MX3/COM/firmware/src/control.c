
#include <xc.h>
#include <sys/attribs.h>
#include "adc.h"
#include "PID.h"
#include "mot.h"
#include "control.h"



//unsigned char dist_min;
//unsigned char vmax;
unsigned char vitesse;

//int Depact_Data()
//{
//    
//}







void Set_MOT_Speed(int speed) 
{
   MOT_SetPhEnMotor1('1', (unsigned char)speed);
}


//PIDController *createPIDController(double p, double i, double d, int (*pidSource)(void), void (*pidOutput)(int output));
//PIDController *createPIDController(double p, double i, double d, adc_tasks, Mot_write);
// 
//
//setInputBounds(PIDController *controller, int lower, int upper)
//((setFeedbackWrapBounds(PIDController *controller, int lower, int upper)))
//setOutputBounds(PIDController *controller, int lower, int upper)
//
// 
//
//myPIDController.registerTimeFunction(millis);

