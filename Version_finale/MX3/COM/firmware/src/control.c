
#include <xc.h>
#include <sys/attribs.h>
#include "adc.h"
#include "PID.h"
#include "mot.h"
#include "control.h"

short distances [6]= {10, 15, 20, 25, 30, 35};
short vitesses [11]= {0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100};
//unsigned char dist_min;
//unsigned char vmax;
unsigned char vitesse;



void control_SetValue(unsigned char dist_min, unsigned char vmax)
{
    dist_set = distances[dist_min];
    v_set = distances[vmax];
}

void control_tasks()
{

}




