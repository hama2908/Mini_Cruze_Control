#ifndef PID_H
#define PID_H
#include "mot.h"
#include "control.h"
#include "adc.h"
#include <stdint.h>
#include "main.h"
//int P = 10;
//int I = 5;
//int D = 2;

typedef struct pid_controller {

	double p;
	double i;
	double d;
	int target;
	int output;
	uint8_t enabled;
	int currentFeedback;
	int lastFeedback;
	int error;
	int lastError;
	long currentTime;
	long lastTime;
	int integralCumulation;
	int maxCumulation;
	int cycleDerivative;

	uint8_t inputBounded;
	int inputLowerBound;
	int inputUpperBound;
	uint8_t outputBounded;
	int outputLowerBound;
	int outputUpperBound;
	uint8_t feedbackWrapped;
	int feedbackWrapLowerBound;
	int feedbackWrapUpperBound;

	uint8_t timeFunctionRegistered;
	int (*pidSource)();
	void (*pidOutput)(int output);
	unsigned long (*getSystemTime)();

} PIDController;

PIDController* PID;

PIDController *createPIDController(double p, double i, double d, int (*pidSource)(void), void (*pidOutput)(int output), unsigned long (*pidtime)(void));
void PID_Init(PIDController* PID);
void tick(PIDController *controller);
void setEnabled(PIDController *controller, uint8_t e);
int getProportionalComponent(PIDController *controller);
int getIntegralComponent(PIDController *controller);
int getDerivativeComponent(PIDController *controller);
void setMaxIntegralCumulation(PIDController *controller, int max);

void setInputBounds(PIDController *controller, int lower, int upper);
void setOutputBounds(PIDController *controller, int lower, int upper);
void setFeedbackWrapBounds(PIDController *controller, int lower, int upper);

void setPIDSource(PIDController *controller, int (*pidSource)());
void setPIDOutput(PIDController *controller, void (*pidOutput)(int output));
void registerTimeFunction(PIDController *controller, unsigned long (*getSystemTime)(void));

void control_tasks(PIDController *controller, int distance, int vitesse);

#endif // PID_H
