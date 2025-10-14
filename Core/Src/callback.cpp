//
// Created by a2005 on 2025/10/12.
//
#include "../Inc/BMI088.hpp"
#include <gpio.h>
#include <tim.h>

IMU imu;

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim) {
  if (htim == &htim6) {
    imu.acc_calculate();
    imu.gyro_calculate();
    
  }
}

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin) {
  if (GPIO_Pin == INT_Accel_Pin) {
    
  }
  if (GPIO_Pin == INT_Gyro_Pin) {
    
  }
}