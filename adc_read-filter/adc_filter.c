#include "adc_filter.h"

float ADC_filter(uint32_t resultBase, ADC_SOCNumber socNumber, float *filteredValue, float alpha, uint32_t raw)
{

    // Update exponential smoothing
    *filteredValue = alpha * raw + (1.0f - alpha) * (*filteredValue);

    // Return filtered float value
    return *filteredValue;
}