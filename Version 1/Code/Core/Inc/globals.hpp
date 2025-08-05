#pragma once

#ifndef GLOBALS_HPP
#define GLOBALS_HPP

#include "MotorController.hpp"
#include "cmsis_os.h"

extern MotorController motorController;
extern osMutexId_t uartMutex;

extern DirectionMode last_valid_direction;
extern ControlMode last_valid_mode;


#endif
