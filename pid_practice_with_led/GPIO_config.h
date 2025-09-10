#ifndef _GPIO_CONFIG_H_
#define _GPIO_CONFIG_H_

#include "gpio.h"
#include "device.h"
#include "driverlib.h"

void GPIO_init_output(uint32_t pin);

void GPIO_init_input(uint32_t pin);

#endif


