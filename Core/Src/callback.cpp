//
// Created by a2005 on 2025/10/12.
//
#include "../Inc/BMI088.hpp"
#include "Controller.hpp"
#include <cstring>
#include <gpio.h>
#include <tim.h>

IMU imu;
extern Controller rc;

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef* htim) {
    if (htim == &htim6) {
        imu.acc_calculate();
        imu.gyro_calculate();
        imu.update_orientation(1);
    }
}

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin) {
    if (GPIO_Pin == INT_Accel_Pin) {
    }
    if (GPIO_Pin == INT_Gyro_Pin) {
    }
}

void HAL_UARTEx_RxEventCallback(UART_HandleTypeDef* huart, uint16_t Size) {
    if (huart == &huart3 && huart->RxEventType != HAL_UART_RXEVENT_HT) {
        if (Size == 18) {
            rc.handle();
        }
        HAL_UARTEx_ReceiveToIdle_DMA(huart, rc.rx_buffer, 32);
    }
}