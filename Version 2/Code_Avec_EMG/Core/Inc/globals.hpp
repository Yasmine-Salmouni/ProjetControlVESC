#pragma once

#ifndef GLOBALS_HPP
#define GLOBALS_HPP

#include "MotorController.hpp"
#include "cmsis_os.h"

#include "main.h"

#define FFT_WINDOW_SIZE 2048 //EMG
#define SLIDING_STEP_SIZE (FFT_WINDOW_SIZE / 2) //EMG

extern MotorController motorController;
extern osMutexId_t uartMutex;

extern DirectionMode last_valid_direction;
extern ControlMode last_valid_mode;

extern UART_HandleTypeDef huart5; //EMG
extern float* emg_buffer; //EMG
extern int emg_buffer_idx; //EMG

#endif // GLOBALS_HPP 