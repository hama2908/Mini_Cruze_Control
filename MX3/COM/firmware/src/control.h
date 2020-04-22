
#ifndef _control_H    /* Guard against multiple inclusion */
#define _control_H

#include "mot.h"
#include "config.h"


unsigned int dist_set;
unsigned int v_set;

void control_SetValue(unsigned char dist_min,unsigned char vmax);
void control_tasks();

#endif /* _PID_H */

