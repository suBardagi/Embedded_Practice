#include "GPIO_config.h"

void GPIO_init_output(uint32_t pin){
    
    GPIO_setPadConfig(31U, GPIO_PIN_TYPE_STD);
    GPIO_setDirectionMode(31U, GPIO_DIR_MODE_OUT);

}

void GPIO_init_input(uint32_t pin){

    GPIO_setPadConfig(31U, GPIO_PIN_TYPE_STD);
    GPIO_setDirectionMode(31U, GPIO_DIR_MODE_IN);

}
