#ifndef PID_H
#define PID_H

#include "device.h"
#include "driverlib.h"

typedef struct{
    float Kp;
    float Ki;
    float Kd;
    float integral;
    float prev_error;

    // limits for the PID
    float integral_max;
    float integral_min;
    float output_max;
    float output_min;

    float dt;

    uint8_t use_limits;
    uint8_t use_dt;

    float deriv_filter_alpha;
    float derivative_filtered;
} PID_controller;

void pid_init(PID_controller *pid, float Kp, float Ki, float Kd, uint8_t use_limits, uint8_t use_dt, ...);

float pid_compute(PID_controller *pid, float set, float measurement);

#endif
