
#include <xc.h>
#include <sys/attribs.h>
#include "adc.h"
#include "PID.h"


unsigned int distances [6]= {10, 15, 20, 25, 30, 35, 40};
unsigned int vitesses [11]= {0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100};

void PID_SetValue(unsigned char dist_min, unsigned char vmax)
{


    dist_set = distances[dist_min];
    v_set = distances[vmax];
  

}

