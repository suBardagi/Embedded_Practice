#include "delay_time.h"

void set_Delay_time(uint32_t delay_time){

    if(delay_time < 1)
        delay_time = 1;       // minimum 1 us
    else if(delay_time > 5000000)
        delay_time = 500000000; // max 5 s (safety)

    DEVICE_DELAY_US(delay_time);
}
