//#############################################################################
//
// FILE:   empty_driverlib_main.c
//
//! \addtogroup driver_example_list
//! <h1>Empty Project Example</h1> 
//!
//! This example is an empty project setup for Driverlib development.
//!
//
//#############################################################################
//
//
// $Copyright:
// Copyright (C) 2025 Texas Instruments Incorporated - http://www.ti.com/
//
// Redistribution and use in source and binary forms, with or without 
// modification, are permitted provided that the following conditions 
// are met:
// 
//   Redistributions of source code must retain the above copyright 
//   notice, this list of conditions and the following disclaimer.
// 
//   Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the 
//   documentation and/or other materials provided with the   
//   distribution.
// 
//   Neither the name of Texas Instruments Incorporated nor the names of
//   its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT 
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT 
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, 
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT 
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// $
//#############################################################################

//
// Included Files
//
#include "driverlib.h"
#include "device.h"
#include "board.h"
#include "c2000ware_libraries.h"
#include "GPIO_config.h"
#include "delay_time.h"
#include "pid.h"

uint32_t delay_time = 500000;
volatile float pid_output_1 = 0;
volatile float pid_output_2 = 0;
volatile float current_val = 0.0f;
volatile float voltage_val = 0.0f;
volatile float set = 50000.0f;
uint16_t test = 0;
//
// Main
//
void main(void)
{

    //
    // Initialize device clock and peripherals
    //
    Device_init();

    //
    // Disable pin locks and enable internal pull-ups.
    //
    Device_initGPIO();

    //
    GPIO_init_output(31U);
    // Initialize PIE and clear PIE registers. Disables CPU interrupts.
    //
    Interrupt_initModule();

    //
    // Initialize the PIE vector table with pointers to the shell Interrupt
    // Service Routines (ISR).
    //
    Interrupt_initVectorTable();

    //
    // PinMux and Peripheral Initialization
    //
    Board_init();

    //
    // C2000Ware Library initialization
    //
    C2000Ware_libraries_init();

    //
    // Enable Global Interrupt (INTM) and real time interrupt (DBGM)
    //
    EINT;
    ERTM;

    PID_controller PID_1;
    float Kp_1 = 1.0f;
    float Ki_1 = 0.1f;
    float Kd_1 = 0.01f;

    PID_controller PID_2;
    float Kp_2 = 0.001f;
    float Ki_2 = 0.01f;
    float Kd_2 = 1.0f;

    // if use_limits=1 variable sequence: integral_min, integral_max, output_min, output_max,
    // if use_dt=1 last variable is dt
    pid_init(&PID_1, Kp_1, Ki_1, Kd_1, 1, 0, -100.0f, 100.0f, -5000.0f, 5000.0f);

    pid_init(&PID_2, Kp_2, Ki_2, Kd_2, 0,0);

    while(1)
    {

        pid_output_1 = pid_compute(&PID_1, set, current_val);
        pid_output_2 = pid_compute(&PID_2, set, voltage_val);
        
        current_val += pid_output_1 * 0.01f;
        voltage_val += pid_output_2 * 0.1f;

        if(current_val >= 500000000.0f) current_val = 500000000.0f;
        else if(current_val <= 1000.0f) current_val = 1000.0f;

        GPIO_writePin(31U,1);
        set_Delay_time(current_val);
        GPIO_writePin(31U,0);
        set_Delay_time(current_val);
        
        set_Delay_time(1000);
             
    }
}

//
// End of File
//
