/*
 * ScreenDisplay.cpp
 *
 *  Created on: Apr 14, 2025
 *      Author: Yasmine Salmouni
 */


 #include "../Inc/ScreenDisplay.hpp"
 #include "../Inc/MotorController.hpp"

 ScreenDisplay::ScreenDisplay(UART_HandleTypeDef* EcranUart) : ecran_uart(EcranUart) {}

 void ScreenDisplay::sendCommand(const char* cmd) {
     HAL_UART_Transmit(ecran_uart, (uint8_t*)cmd, strlen(cmd), HAL_MAX_DELAY);
     uint8_t end[3] = {0xFF, 0xFF, 0xFF};
     HAL_UART_Transmit(ecran_uart, end, 3, HAL_MAX_DELAY);
 }

 void ScreenDisplay::sendText(const char* component, const char* message) {
     char buffer[64];
     snprintf(buffer, sizeof(buffer), "%s.txt=\"%s\"", component, message);
     sendCommand(buffer);
 }

 void ScreenDisplay::sendValue(const char* component, float value, const char* format)
 // Afficher un nombre (float) dans un champ texte (t1, cad, pow, etc.) sur l'écran Nextion,
 //en utilisant un format personnalisé (ex : %.1f ou %.2f).
 {
     char valueStr[32];
     snprintf(valueStr, sizeof(valueStr), format, value);

     char buffer[64];
     snprintf(buffer, sizeof(buffer), "%s.txt=\"%s\"", component, valueStr);
     sendCommand(buffer);
 }

 // --- Fonctions spécifiques de haut niveau ---

 void ScreenDisplay::showCadence(float rpm) {
     sendValue("cad_val", rpm, "%.1f");
 }

 //Pour le graphe

/* void ScreenDisplay::showCadence(float rpm) {
    static bool graphConfigured = false;

    if (!graphConfigured) {
        sendCommand("cad_val.minval=0");
        sendCommand("cad_val.maxval=8270");
        graphConfigured = true;
    }

    char cmd[40];
    sprintf(cmd, "add cad_val,0,%.0f", rpm);
    sendCommand(cmd);
}*/


 void ScreenDisplay::showTorque(float torque) {
     sendValue("tor_val", torque, "%.4f");
 }

 //Pour le graphe

/* void ScreenDisplay::showTorque(float torque) {
    char cmd[50];
    sprintf(cmd, "add tor_val,0,%.0f", torque);  // envoie une valeur entière
    sendCommand(cmd);
}*/


 void ScreenDisplay::showPower(float power) {
     sendValue("pow_val", power, "%.1f");
 }

//Pour le graphe

 /*void ScreenDisplay::showPower(float power) {
    char cmd[50];
    sprintf(cmd, "add pow_val,0,%.0f", power);  // conversion en entier pour le graphe
    sendCommand(cmd);
}*/

void ScreenDisplay::showAll(float rpm, float torque, float power) {
    char cmd[50];

    // Canal 0 : cadence (RPM)
    sprintf(cmd, "add multi_val,0,%.0f", rpm);
    sendCommand(cmd);

    // Canal 1 : torque (Nm)
    sprintf(cmd, "add multi_val,1,%.0f", torque);
    sendCommand(cmd);

    // Canal 2 : power (W)
    sprintf(cmd, "add multi_val,2,%.0f", power);
    sendCommand(cmd);
}


 void ScreenDisplay::showMode(ControlMode mode) {

    const char* modeName = "UNKNOWN";
    switch (mode) {
        case ControlMode::CADENCE: modeName = "Cadence"; break;
        case ControlMode::TORQUE: modeName = "Torque"; break;
        case ControlMode::POWER_CONCENTRIC: modeName = "Power Concentric"; break;
        case ControlMode::POWER_ECCENTRIC: modeName = "Power Eccentric"; break;
        case ControlMode::LINEAR: modeName = "Linear"; break;
    }
    sendText("mode_show", modeName);

}


 void ScreenDisplay::showGain(float LinearGain) {
    sendValue("gain_val", LinearGain, "%.2f");
}

 void ScreenDisplay::showError(const char* message) {
     sendText("err", message);  // champ texte nommé "err"
 }

 void ScreenDisplay::showWelcome(){
     sendText("t0", "Ergocycle S2M Ready!");
 }

 void ScreenDisplay::clearScreen() {
     sendCommand("cls BLACK");  // Efface l'écran
 }

 int32_t ScreenDisplay::readInt32()
 {
    uint8_t response[8]; //On crée un tableau pour recevoir jusqu'à 8 octets en provenance de l'écran Nextion, via l'UART

    //La réponse ressemble à ça: 0x71 [val0] [val1] [val2] [val3] 0xFF 0xFF 0xFF avec de val0 à val3 le message qui nous interesse cdé en little indian
    if (HAL_UART_Receive(ecran_uart, response, 8, 100) != HAL_OK) {
        return -1;
    }

    if (response[0] != 0x71) return -1;

    int32_t value = (response[1]) |
                    (response[2] << 8) |
                    (response[3] << 16) |
                    (response[4] << 24);
    //response[1] = octet le moins significatif (LSB)
    //response[4] = octet le plus significatif (MSB)

    return value;
}

 /*float ScreenDisplay::getUserCadence() {
    sendCommand("get cad.txt");  // cad : champ de cadence
    int32_t value = readInt32();
    return static_cast<float>(value);  // en tr/min
}*/

 uint8_t ScreenDisplay::readByte() {
     // Attend que l'octet soit reçu (RXNE = 1)
     while (!(USART2->SR & USART_SR_RXNE));

     // Lit l'octet reçu (registre de données)
     return static_cast<uint8_t>(USART2->DR & 0xFF);
 }


 float ScreenDisplay::getUserCadence() {
     sendCommand("get cad.txt");  // Envoie la commande à l'écran Nextion

     // Attente de la réponse : format = 0x70 + "texte" + 0xFF 0xFF 0xFF
     const uint8_t RESPONSE_HEADER = 0x70;
     const uint8_t END_BYTE = 0xFF;
     const uint32_t TIMEOUT_MS = 100;  // Timeout de 100ms

     char buffer[32] = {0};
     int index = 0;
     bool headerFound = false;
     int endCount = 0;
     uint32_t startTime = HAL_GetTick();

     // Boucle d'attente de réponse avec timeout
     while (HAL_GetTick() - startTime < TIMEOUT_MS) {
         if (!(USART2->SR & USART_SR_RXNE)) {
             continue;  // Pas de données disponibles
         }

         uint8_t byte = static_cast<uint8_t>(USART2->DR & 0xFF);

         if (!headerFound) {
             if (byte == RESPONSE_HEADER) {
                 headerFound = true;
             }
             continue;
         }

         if (byte == END_BYTE) {
             endCount++;
             if (endCount == 3) {
                 buffer[index] = '\0';
                 return atof(buffer);  // Conversion réussie
             }
         } else {
             if (index < sizeof(buffer) - 1) {
                 buffer[index++] = byte;
             }
             endCount = 0;
         }
     }

     // Timeout ou erreur
     return -1.0f;  // Valeur d'erreur
 }



/*float ScreenDisplay::getUserPower() {
    sendCommand("get pow.val");  // pow : champ de puissance
    int32_t value = readInt32();
    return static_cast<float>(value);  // en watts
}*/

 float ScreenDisplay::getUserPower() {
     sendCommand("get pow.txt");  // Demande à l'écran Nextion la valeur texte de pow

     const uint8_t RESPONSE_HEADER = 0x70;
     const uint8_t END_BYTE = 0xFF;

     char buffer[32] = {0};
     int index = 0;
     bool headerFound = false;
     int endCount = 0;

     while (true) {
         uint8_t byte = readByte();  // Fonction bloquante UART

         if (!headerFound) {
             if (byte == RESPONSE_HEADER) {
                 headerFound = true;
             }
             continue;
         }

         if (byte == END_BYTE) {
             endCount++;
             if (endCount == 3) {
                 buffer[index] = '\0';
                 break;
             }
         } else {
             if (index < sizeof(buffer) - 1) {
                 buffer[index++] = byte;
             }
             endCount = 0;
         }
     }

     return atof(buffer);  // Conversion vers float (watts)
 }


/*float ScreenDisplay::getUserTorque() {
    sendCommand("get tor.val");  // tor : champ de couple
    int32_t value = readInt32();
    return static_cast<float>(value);  // en Nm
}*/

 float ScreenDisplay::getUserTorque() {
     sendCommand("get tor.txt");  // Demande la valeur du champ texte "tor"

     const uint8_t RESPONSE_HEADER = 0x70;
     const uint8_t END_BYTE = 0xFF;

     char buffer[32] = {0};
     int index = 0;
     bool headerFound = false;
     int endCount = 0;

     while (true) {
         uint8_t byte = readByte();  // Fonction bloquante de lecture UART

         if (!headerFound) {
             if (byte == RESPONSE_HEADER) {
                 headerFound = true;
             }
             continue;
         }

         if (byte == END_BYTE) {
             endCount++;
             if (endCount == 3) {
                 buffer[index] = '\0';  // Fin de la chaîne reçue
                 break;
             }
         } else {
             if (index < sizeof(buffer) - 1) {
                 buffer[index++] = byte;
             }
             endCount = 0;
         }
     }

     return atof(buffer);  // Convertit la chaîne en float (Nm)
 }


ControlMode ScreenDisplay::getMode() {
    sendCommand("get mode.val");  // Lire la valeur du composant 'mode'
    int32_t value = readInt32();

    switch (value) {
        case 0: return ControlMode::CADENCE;
        case 1: return ControlMode::TORQUE;
        case 2: return ControlMode::POWER_CONCENTRIC;
        case 3: return ControlMode::POWER_ECCENTRIC;
        case 4: return ControlMode::LINEAR;
        default: return ControlMode::CADENCE;  // valeur par défaut si erreur
    }
}

/*float ScreenDisplay::getUserLinearGain() {
    sendCommand("get gain.val");  // Demande à l'écran la valeur du champ gain
    int32_t value = readInt32();  // Lit la réponse binaire (format Nextion)

    return static_cast<float>(value) / 100.0f;  // Conversionenfloat
}*/

float ScreenDisplay::getUserLinearGain() {
    sendCommand("get gain.txt");  // Demande la valeur texte du champ gain

    const uint8_t RESPONSE_HEADER = 0x70;
    const uint8_t END_BYTE = 0xFF;

    char buffer[32] = {0};
    int index = 0;
    bool headerFound = false;
    int endCount = 0;

    while (true) {
        uint8_t byte = readByte();  // Lecture UART bloquante

        if (!headerFound) {
            if (byte == RESPONSE_HEADER) {
                headerFound = true;
            }
            continue;
        }

        if (byte == END_BYTE) {
            endCount++;
            if (endCount == 3) {
                buffer[index] = '\0';
                break;
            }
        } else {
            if (index < sizeof(buffer) - 1) {
                buffer[index++] = byte;
            }
            endCount = 0;
        }
    }

    return atof(buffer) / 100.0f;  // Conversion en float et mise à l'échelle
}


void ScreenDisplay::showDutyCycle(float duty) {
    // Convertir duty cycle en pourcentage
    float percent = duty * 100.0f;

    // Affiche sur un champ texte appelé "duty"
    sendValue("duty", percent, "%.1f");
}

void ScreenDisplay::showDirection(DirectionMode dir_show) {
    sendText("dir_show", (dir_show == DirectionMode::REVERSE) ? "REVERSE" : "FORWARD");
}

bool ScreenDisplay::getStop() {
    sendCommand("get stop.val");     // Demande la valeur du bouton "stop"

    const uint8_t RESPONSE_HEADER = 0x71;  // Header pour les valeurs numériques
    const uint8_t END_BYTE = 0xFF;
    const uint32_t TIMEOUT_MS = 100;  // Timeout de 100ms

    uint8_t response[8] = {0};  // Buffer pour la réponse
    uint32_t startTime = HAL_GetTick();
    int index = 0;
    bool headerFound = false;
    int endCount = 0;

    // Boucle d'attente de réponse avec timeout
    while (HAL_GetTick() - startTime < TIMEOUT_MS) {
        if (!(USART2->SR & USART_SR_RXNE)) {
            continue;  // Pas de données disponibles
        }

        uint8_t byte = static_cast<uint8_t>(USART2->DR & 0xFF);

        if (!headerFound) {
            if (byte == RESPONSE_HEADER) {
                headerFound = true;
            }
            continue;
        }

        if (byte == END_BYTE) {
            endCount++;
            if (endCount == 3) {
                break;  // Fin de la réponse
            }
        } else {
            if (index < sizeof(response)) {
                response[index++] = byte;
            }
            endCount = 0;
        }
    }

    // Si on a reçu une réponse valide
    if (headerFound && index >= 4) {
        int32_t value = (response[0]) |
                       (response[1] << 8) |
                       (response[2] << 16) |
                       (response[3] << 24);

        bool currentButtonState = (value == 1);

        // Détection du front montant (appui sur le bouton)
        if (currentButtonState && !lastStopButtonState) {
            stopState = !stopState;  // Inverse l'état du stop
        }

        lastStopButtonState = currentButtonState;
        return stopState;
    }

    return stopState;  // En cas d'erreur, on garde l'état actuel
}

//tester si ça marche
DirectionMode ScreenDisplay::getDirection() {
    sendCommand("get dir.val");     // dir
    int32_t value = readInt32();    // Lecture 0 ou 1
    return (value == 1) ? DirectionMode::REVERSE : DirectionMode::FORWARD;
}

float ScreenDisplay::getRampRate()
{
    sendCommand("get ramp.val");
    int32_t value = readInt32();  // Lit la réponse binaire (format Nextion)

    return static_cast<float>(value);
}

bool ScreenDisplay::getCalibrateRequest() {
    sendCommand("get btn_calib.val");  // Lire l'état du bouton calibration btn_calib
    int32_t value = readInt32();
    return (value == 1);  // 1 = pressé
}

void ScreenDisplay::showCalibrationStatus(bool success) {
    if (success) {
        sendText("calib_stat", "Calibration OK");
    } else {
        sendText("calib_stat", "Erreur calibration");
    }
}


