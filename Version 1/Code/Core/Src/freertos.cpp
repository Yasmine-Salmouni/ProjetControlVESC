
/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : freertos.c
  * Description        : Code for freertos applications
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
extern "C" {
#include "cmsis_os.h"
#include "task.h"
#include "FreeRTOS.h"
}
#include <main.h>

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "../Inc/MotorController.hpp"
#include "../Inc/ScreenDisplay.hpp"
#include "../Inc/globals.hpp"

osMutexId_t uartMutex;

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN Variables */
osThreadId_t TaskUpdateSHandle;
const osThreadAttr_t TaskUpdateS_attributes = {
  .name = "TaskUpdateS",
  .stack_size = 256 * 4,
  .priority = (osPriority_t) osPriorityRealtime5,
};

osThreadId_t TaskUpdateFromSHandle;
const osThreadAttr_t TaskUpdateFromS_attributes = {
  .name = "TaskUpdateFromS",
  .stack_size = 256 * 4,
  .priority = (osPriority_t) osPriorityRealtime7,
};

osThreadId_t LinearControlHandle;
const osThreadAttr_t LinearControl_attributes = {
  .name = "LinearControl",
  .stack_size = 256 * 4,
  .priority = (osPriority_t) osPriorityRealtime,
};

/* Attributs */
/* USER CODE END Variables */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */
extern "C" void StartTaskUpdateS(void *argument);
extern "C" void StartTaskUpdatefromS(void *argument);
extern "C" void StartTaskLinearControl(void *argument);
/* USER CODE END FunctionPrototypes */

/* Function implementing the TaskUpdateS thread */
void StartTaskUpdateS(void *argument)
{
  /* Infinite loop */
  for(;;)
  {
    // Suppression des affichages debug autour du mutex
    if (osMutexAcquire(uartMutex, 50) == osOK) {
      motorController.updateScreen();  // Affiche les données à l'écran
      osMutexRelease(uartMutex);
    }
    osDelay(20);                   // Rafraîchissement toutes les 100 ms
  }
}

void StartTaskUpdatefromS(void *argument)
{
    for (;;)
    {
        // Suppression des affichages debug autour du mutex
        if (osMutexAcquire(uartMutex, 50) == osOK) {
            motorController.updateFromScreen();  // appel de la méthode
            osMutexRelease(uartMutex);
        }
        osDelay(20);  // met à jour toutes les 20 ms pour une meilleure réactivité
    }
}

void StartTaskLinearControl(void *argument)
{
  for(;;)
  {
    if (motorController.getControlMode() == ControlMode::LINEAR)
    {
      float cadence = motorController.getCadence();
      if (osMutexAcquire(uartMutex, 50) == osOK) {
        motorController.update(cadence);
        osMutexRelease(uartMutex);
      }
    }
    osDelay(50);
  }
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */

/* USER CODE END Application */

/* FreeRTOS initialization function */
void MX_FREERTOS_Init(void) {
  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Create the thread(s) */

  // Création du mutex UART
  const osMutexAttr_t uartMutex_attributes = {
    .name = "uartMutex"
  };
  uartMutex = osMutexNew(&uartMutex_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
	TaskUpdateSHandle = osThreadNew(StartTaskUpdateS, NULL, &TaskUpdateS_attributes);
	TaskUpdateFromSHandle= osThreadNew(StartTaskUpdatefromS, NULL, &TaskUpdateFromS_attributes);
	LinearControlHandle = osThreadNew(StartTaskLinearControl, NULL, &LinearControl_attributes);


  /* USER CODE END RTOS_THREADS */

  /* USER CODE BEGIN RTOS_QUEUES */
	/* Create the queue(s) */
  /* USER CODE END RTOS_QUEUES */
}
