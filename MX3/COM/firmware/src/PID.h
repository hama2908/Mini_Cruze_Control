
#ifndef _PID_H    /* Guard against multiple inclusion */
#define _PID_H


#include "config.h"


unsigned int dist_set;
unsigned int v_set;

void PID_SetValue(unsigned char dist_min, unsigned char vmax);
void PID_tasks();

#endif /* _PID_H */

