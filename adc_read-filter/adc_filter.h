#ifndef _ADC_FILTER_
#define _ADC_FILTER_

#include "adc.h"


float ADC_filter(uint32_t resultBase, ADC_SOCNumber socNumber, float *filteredValue, float alpha, uint32_t raw);





#endif

