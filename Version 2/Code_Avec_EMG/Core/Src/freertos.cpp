/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : freertos.cpp
  * Description        : Code for freertos applications
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
#include "../Inc/EMG_Features.hpp"
#include <string.h>
#include <stdio.h>
#include <stdint.h>
#include "../../X-CUBE-AI/App/model_lstm_keras.h"
#include "../../X-CUBE-AI/App/model_lstm_keras_data.h"
#include "ai_platform.h"
/* USER CODE END Includes */

osMutexId_t uartMutex;

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN Variables */
float* emg_buffer = nullptr;
int emg_buffer_idx = 0;

// Variables UART RX globales
#define UART_RX_BUFFER_SIZE 32
char uart_rx_str[UART_RX_BUFFER_SIZE];
uint8_t uart_rx_index = 0;
uint8_t rx_byte;
uint32_t last_activity_time = 0;
uint32_t timeout_ms = 10; // Timeout de 10ms au lieu de 100ms

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
  .priority = (osPriority_t) osPriorityRealtime3,
};

osThreadId_t UART_RX_EMGHandle;
const osThreadAttr_t UART_RX_EMG_attributes = {
  .name = "UART_RX_EMG",
  .stack_size = 512 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};

osThreadId_t ProcessEMGHandle;
const osThreadAttr_t ProcessEMG_attributes = {
  .name = "ProcessEMG",
  .stack_size = 1024 * 4, // Réduit de 2048 à 1024
  .priority = (osPriority_t) osPriorityNormal,
};

osSemaphoreId_t emgDataReadySemHandle;
const osSemaphoreAttr_t emgDataReadySem_attributes = { .name = "emgDataReadySem" };

/* USER CODE END Variables */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */
extern "C" void StartTaskUpdateS(void *argument);
extern "C" void StartTaskUpdatefromS(void *argument);
extern "C" void StartTaskLinearControl(void *argument);
extern "C" void StartTaskUART_RX_EMG(void *argument);
void StartTaskProcessEMG(void *argument);
/* USER CODE END FunctionPrototypes */

/* Function implementing the TaskUpdateS thread */
/*
void StartTaskUpdateS(void *argument)
{
  for(;;)
  {
    if (osMutexAcquire(uartMutex, 50) == osOK) {
    	motorController.getscreen()->sendText("err", "Lancement de l'ecran");
      motorController.updateScreen();
      osMutexRelease(uartMutex);
    }
    osDelay(20);
  }
}

void StartTaskUpdatefromS(void *argument)
{
  for (;;)
  {
    if (osMutexAcquire(uartMutex, 50) == osOK) {
    	motorController.getscreen()->sendText("err", "Lancement du moteur");
      motorController.updateFromScreen();
      osMutexRelease(uartMutex);
    }
    osDelay(20);
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
    	  motorController.getscreen()->sendText("err", "Lancement du mode linéaire");
        motorController.update(cadence);
        osMutexRelease(uartMutex);
      }
    }
    osDelay(50);
  }
}
*/

void StartTaskUART_RX_EMG(void *argument)
{
    for(;;)
    {
        // Initialisation au premier passage
        static bool initialized = false;
        if (!initialized) {
            if (osMutexAcquire(uartMutex, 50) == osOK) {
                motorController.getscreen()->sendText("err", "Lancement de la tâche EMG");
                osMutexRelease(uartMutex);
            }

            emg_buffer = new float[FFT_WINDOW_SIZE];
            if (emg_buffer == nullptr) {
                if (osMutexAcquire(uartMutex, 50) == osOK) {
                    motorController.getscreen()->showError("Memoire EMG pleine!");
                    osMutexRelease(uartMutex);
                }
                while (1) { osDelay(1000); }
            }
            emg_buffer_idx = 0;

            // Réinitialisation des variables globales UART
            uart_rx_index = 0;
            last_activity_time = 0;
            
            initialized = true;
        }

        // Réception directe avec timeout
        HAL_StatusTypeDef status = HAL_UART_Receive(&huart5, &rx_byte, 1, timeout_ms);

        if (status == HAL_OK) {
            // Toggle LED pour debug visuel
            HAL_GPIO_TogglePin(GPIOD, LD3_Pin);

            last_activity_time = osKernelGetTickCount();

            // Ajouter le caractère au buffer
            if (uart_rx_index < UART_RX_BUFFER_SIZE - 1) {
                uart_rx_str[uart_rx_index++] = rx_byte;
            }

            // Si on reçoit un caractère de fin de ligne, traiter la chaîne complète
            if (rx_byte == '\n' || rx_byte == '\r') {
                if (uart_rx_index > 0) {
                    uart_rx_str[uart_rx_index] = '\0'; // Terminer la chaîne
                    
                    // Convertir en float et traiter
                    float value = strtof(uart_rx_str, NULL);

                    if (osMutexAcquire(uartMutex, 50) == osOK) {
                        char msg[64];
                        snprintf(msg, sizeof(msg), "Valeur EMG: %.2f", value);
                        motorController.getscreen()->sendText("err", msg);
                        osMutexRelease(uartMutex);
                    }

                    if (emg_buffer_idx < FFT_WINDOW_SIZE) {
                        emg_buffer[emg_buffer_idx++] = value;
                    }
                    
                    // Traitement avec fenêtre de 2048 et glissement de 50%
                    if (emg_buffer_idx >= FFT_WINDOW_SIZE) {
                        if (osMutexAcquire(uartMutex, 50) == osOK) {
                            char debug_msg[64];
                            snprintf(debug_msg, sizeof(debug_msg), "Fenetre 2048 pleine: %d echantillons", emg_buffer_idx);
                            motorController.getscreen()->sendText("err", debug_msg);
                            osMutexRelease(uartMutex);
                        }
                        
                        // Libérer le sémaphore pour traitement avec fenêtre complète
                        if (osMutexAcquire(uartMutex, 50) == osOK) {
                            motorController.getscreen()->sendText("err", "Traitement fenetre 2048");
                            osMutexRelease(uartMutex);
                        }
                        osSemaphoreRelease(emgDataReadySemHandle);
                        
                        // Glissement de 50% = 1024 échantillons
                        int shift_size = FFT_WINDOW_SIZE / 2; // 1024
                        memmove(emg_buffer, &emg_buffer[shift_size], (emg_buffer_idx - shift_size) * sizeof(float));
                        emg_buffer_idx -= shift_size;
                        
                        if (osMutexAcquire(uartMutex, 50) == osOK) {
                            char debug_msg[64];
                            snprintf(debug_msg, sizeof(debug_msg), "Glissement 50%%: %d restants", emg_buffer_idx);
                            motorController.getscreen()->sendText("err", debug_msg);
                            osMutexRelease(uartMutex);
                        }
                    }
                    uart_rx_index = 0; // Reset pour la prochaine chaîne
                }
            }
        } else if (status == HAL_TIMEOUT) {
            // Timeout - pas de données reçues
            uint32_t current_time = osKernelGetTickCount();
            if (current_time - last_activity_time > 1000) { // 1 seconde au lieu de 5
                if (osMutexAcquire(uartMutex, 50) == osOK) {
                    motorController.getscreen()->sendText("err", "En attente de donnees EMG...");
                    osMutexRelease(uartMutex);
                }
                last_activity_time = current_time;
            }
        } else {
            // Erreur de réception
            if (osMutexAcquire(uartMutex, 50) == osOK) {
                char error_msg[64];
                snprintf(error_msg, sizeof(error_msg), "Erreur UART: %d", status);
                motorController.getscreen()->sendText("err", error_msg);
                osMutexRelease(uartMutex);
            }
            osDelay(20); // Attendre un peu avant de réessayer
        }
    }
}

void StartTaskProcessEMG(void *argument)
{
    const float SAMPLING_RATE = 1259.0f;
    EMG_Features features;
    static uint32_t start_tick = 0;
    bool started = false;
    static int last_fatigue_label = 0;



    static ai_handle model = AI_HANDLE_NULL;
    static bool ai_initialized = false;
    static ai_buffer ai_input_buffer;
    static ai_buffer ai_output_buffer;
    static float ai_input_data[8];
    static float ai_output_data[1];
    static ai_shape_dimension input_shape_data[4] = {1, 8, 1, 1};
    static ai_shape_dimension output_shape_data[4] = {1, 1, 1, 1};
    static ai_buffer_shape input_shape = {AI_SHAPE_BCWH, 4, input_shape_data};
    static ai_buffer_shape output_shape = {AI_SHAPE_BCWH, 4, output_shape_data};
    
    if (!ai_initialized) {
        if (osMutexAcquire(uartMutex, 50) == osOK) {
            motorController.getscreen()->sendText("err", "Initialisation du modèle IA...");
            osMutexRelease(uartMutex);
        }
        
        ai_error err;
        err = ai_model_lstm_keras_create(&model, AI_MODEL_LSTM_KERAS_DATA_CONFIG);
        if (err.type != AI_ERROR_NONE) {
            if (osMutexAcquire(uartMutex, 50) == osOK) {
                char error_msg[64];
                snprintf(error_msg, sizeof(error_msg), "Erreur creation modele: %d", err.code);
                motorController.getscreen()->sendText("err", error_msg);
                osMutexRelease(uartMutex);
            }
            while (1) { osDelay(1000); }
        }
        
        ai_network_params params;
        ai_model_lstm_keras_data_params_get(&params);
        if (!ai_model_lstm_keras_init(model, &params)) {
            if (osMutexAcquire(uartMutex, 50) == osOK) {
                motorController.getscreen()->sendText("err", "Erreur init modele IA");
                osMutexRelease(uartMutex);
            }
            while (1) { osDelay(1000); }
        }
        
        ai_input_buffer = {
            AI_BUFFER_FORMAT_FLOAT,
            ai_input_data,
            NULL,
            0,
            8,
            input_shape
        };
        ai_output_buffer = {
            AI_BUFFER_FORMAT_FLOAT,
            ai_output_data,
            NULL,
            0,
            1,
            output_shape
        };
        ai_initialized = true;
        
        if (osMutexAcquire(uartMutex, 50) == osOK) {
            motorController.getscreen()->sendText("err", "Modèle IA initialisé avec succès");
            osMutexRelease(uartMutex);
        }
    }

    for(;;)
    {
        if (osSemaphoreAcquire(emgDataReadySemHandle, 100) == osOK) {
            if (!started) {
                start_tick = osKernelGetTickCount();
                started = true;
                if (osMutexAcquire(uartMutex, 50) == osOK) {
                    motorController.getscreen()->sendText("err", "Premier traitement EMG");
                    osMutexRelease(uartMutex);
                }
            }
            
            uint32_t now_tick = osKernelGetTickCount();
            float duration_since_start = (now_tick - start_tick) / 1000.0f;

            if (emg_buffer != nullptr) {
                if (osMutexAcquire(uartMutex, 50) == osOK) {
                    motorController.getscreen()->sendText("err", "Calcul des features EMG...");
                    osMutexRelease(uartMutex);
                }
                
                // Utiliser directement emg_buffer au lieu d'un buffer temporaire
                // static float temp_buffer[FFT_WINDOW_SIZE]; // Supprimé pour économiser la RAM
                int samples_to_process = (emg_buffer_idx >= FFT_WINDOW_SIZE) ? FFT_WINDOW_SIZE : emg_buffer_idx;
                
                // Padding avec la dernière valeur reçue si nécessaire
                if (samples_to_process < FFT_WINDOW_SIZE) {
                    float last_value = (samples_to_process > 0) ? emg_buffer[samples_to_process - 1] : 0.0f;
                    for (int i = samples_to_process; i < FFT_WINDOW_SIZE; i++) {
                        emg_buffer[i] = last_value;
                    }
                    if (osMutexAcquire(uartMutex, 50) == osOK) {
                        char debug_msg[64];
                        snprintf(debug_msg, sizeof(debug_msg), "Padding: %d->%d (val=%.2f)", samples_to_process, FFT_WINDOW_SIZE, last_value);
                        motorController.getscreen()->sendText("err", debug_msg);
                        osMutexRelease(uartMutex);
                    }
                }
                
                if (osMutexAcquire(uartMutex, 50) == osOK) {
                    motorController.getscreen()->sendText("err", "Calcul features simples...");
                    osMutexRelease(uartMutex);
                }
                compute_simple_features(emg_buffer, FFT_WINDOW_SIZE, &features);
                
                if (osMutexAcquire(uartMutex, 50) == osOK) {
                    motorController.getscreen()->sendText("err", "Calcul features FFT...");
                    osMutexRelease(uartMutex);
                }
                compute_fft_features(emg_buffer, FFT_WINDOW_SIZE, SAMPLING_RATE, &features);
                
                if (osMutexAcquire(uartMutex, 50) == osOK) {
                    motorController.getscreen()->sendText("err", "Features calculees");
                    osMutexRelease(uartMutex);
                }
                
                features.duration_since_start = duration_since_start;
                
                if (osMutexAcquire(uartMutex, 50) == osOK) {
                    features.fatigue_label = motorController.getscreen()->getFatigueLabel();
                    last_fatigue_label = features.fatigue_label;
                    osMutexRelease(uartMutex);
                } else {
                    features.fatigue_label = last_fatigue_label;
                }
                
                if (osMutexAcquire(uartMutex, 50) == osOK) {
                    motorController.getscreen()->sendText("err", "Affichage features...");
                    osMutexRelease(uartMutex);
                }
                
                if (osMutexAcquire(uartMutex, 50) == osOK) {
                    motorController.getscreen()->sendText("err", "Test formatage...");
                    osMutexRelease(uartMutex);
                }
                
                ai_input_data[0] = features.rms;
                ai_input_data[1] = features.mav;
                ai_input_data[2] = features.zc;
                ai_input_data[3] = features.wl;
                ai_input_data[4] = features.mdf;
                ai_input_data[5] = features.mnf;
                ai_input_data[6] = features.fatigue_label;
                ai_input_data[7] = features.duration_since_start;
                
                if (osMutexAcquire(uartMutex, 50) == osOK) {
                    motorController.getscreen()->sendText("err", "Preparation IA...");
                    osMutexRelease(uartMutex);
                }
                
                if (osMutexAcquire(uartMutex, 50) == osOK) {
                    motorController.getscreen()->sendText("err", "Exécution du modèle IA...");
                    osMutexRelease(uartMutex);
                }
                
                ai_model_lstm_keras_run(model, &ai_input_buffer, &ai_output_buffer);
                
                if (osMutexAcquire(uartMutex, 50) == osOK) {
                    motorController.getscreen()->sendText("err", "IA executee avec succes");
                    osMutexRelease(uartMutex);
                }
                
                float duration_remaining = ai_output_data[0];
                
                if (osMutexAcquire(uartMutex, 50) == osOK) {
                    char msg[64];
                    snprintf(msg, sizeof(msg), "IA: Temps restant %.1f s", duration_remaining);
                    motorController.getscreen()->sendText("err", msg);
                    osMutexRelease(uartMutex);
                }
            } else {
                if (osMutexAcquire(uartMutex, 50) == osOK) {
                    motorController.getscreen()->sendText("err", "Erreur: emg_buffer est NULL");
                    osMutexRelease(uartMutex);
                }
            }
        } else {
            // Timeout du sémaphore
            if (osMutexAcquire(uartMutex, 50) == osOK) {
                motorController.getscreen()->sendText("err", "ProcessEMG: En attente de données...");
                osMutexRelease(uartMutex);
            }
            osDelay(1000); // Attendre 1 seconde avant de réessayer
        }
    }
}

/* FreeRTOS initialization function */
void MX_FREERTOS_Init(void) {
  /* Create the semaphores(s) */
  emgDataReadySemHandle = osSemaphoreNew(1, 0, &emgDataReadySem_attributes);

  /* Create the thread(s) */
  const osMutexAttr_t uartMutex_attributes = {
    .name = "uartMutex"
  };
  uartMutex = osMutexNew(&uartMutex_attributes);

  /*
  TaskUpdateSHandle = osThreadNew(StartTaskUpdateS, nullptr, &TaskUpdateS_attributes);
  if (TaskUpdateSHandle == NULL) {
      motorController.getscreen()->sendText("err", "Erreur creation TaskUpdateS");
  }

  TaskUpdateFromSHandle = osThreadNew(StartTaskUpdatefromS, nullptr, &TaskUpdateFromS_attributes);
  if (TaskUpdateFromSHandle == NULL) {
      motorController.getscreen()->sendText("err", "Erreur creation TaskUpdateFromS");
  }

  LinearControlHandle = osThreadNew(StartTaskLinearControl, NULL, &LinearControl_attributes);
  if (LinearControlHandle == NULL) {
      motorController.getscreen()->sendText("err", "Erreur creation LinearControl");
  }
  */

  UART_RX_EMGHandle = osThreadNew(StartTaskUART_RX_EMG, nullptr, &UART_RX_EMG_attributes);
  if (UART_RX_EMGHandle == NULL) {
      motorController.getscreen()->sendText("err", "Erreur creation UART_RX_EMG");
  } else {
      motorController.getscreen()->sendText("err", "UART_RX_EMG cree avec succes");
  }

  ProcessEMGHandle = osThreadNew(StartTaskProcessEMG, nullptr, &ProcessEMG_attributes);
  if (ProcessEMGHandle == NULL) {
      motorController.getscreen()->sendText("err", "Erreur creation ProcessEMG");
  } else {
      motorController.getscreen()->sendText("err", "ProcessEMG cree avec succes");
  }
}
