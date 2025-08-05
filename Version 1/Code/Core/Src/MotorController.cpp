/*
 * MotorController.cpp
 *
 *  Created on: May 05 2025
 *      Author: Yasmine Salmouni
 */

#include <main.h>
#include "../Inc/VESCInterface.hpp"
#include "../Inc/ScreenDisplay.hpp"
#include "../Inc/MotorComputations.hpp"
#include "../Inc/globals.hpp"

#include <stdio.h>
#include <cmath>

MotorController::MotorController(UART_HandleTypeDef* controlUart, UART_HandleTypeDef* screenUart, float torquecst)
    : control_uart(controlUart),
      screen_uart(screenUart),
      direction(last_valid_direction),
      controlMode(last_valid_mode),
      instruction(0.0f),
      linearGain(0.05f),
      torqueConstant(torquecst),
      lastAppliedCurrent(0.0f),
      ramp(6.0f),
      computations(torquecst),
      lastValidTorque(0.0f),
      lastValidPower(0.0f),
      lastValidCadence(0.0f)
{
    screen = new ScreenDisplay(screen_uart);
    vesc = new VESCInterface(control_uart);
}
//_____________________________________________________________________________________________
void MotorController::setTorqueConstant(float torquecst)
{
   torqueConstant = torquecst;
   computations.setTorqueConstant(torquecst);
}

//permet de tester setTorqueConstant et calibrateTorqueConstant
float MotorController::getTorqueConstant() const {
	//screen->sendValue("n0", torqueConstant, "%.4f");
    return torqueConstant;
}

void MotorController::calibrateTorqueConstant() {
    const float testCurrent = 5.0f;
    vesc->setCurrent(testCurrent);

    HAL_Delay(1000);

    float measuredTorque = getTorque();
    screen->sendValue("Mtorque", measuredTorque, "%.4f");

    vesc->setCurrent(0.0f);
    HAL_Delay(100);

    /*if (measuredTorque <= 0.0f) {
        screen->sendText("t0", "Erreur calibration");
        return;
    }*/

    float newKt = measuredTorque / testCurrent;

    /*if (newKt<0)
    {
    	newKt= -newKt;
    }*/
    setTorqueConstant(newKt);

    /*if (newKt > 0.01f && newKt < 1.0f) {
        setTorqueConstant(newKt);
        screen->sendText("t0", "Calibration OK");
    } else {
        screen->sendText("t0", "Erreur calibration");
    }*/
    screen->sendText("calib_stat", "Calibration OK");
}


//______________________________________________________________________________________

void MotorController::setLinearGain(float gain)
{
    linearGain = gain;
    //if (screen) screen->sendValue("n0", linearGain, "%.2f");
}

//permet de tester setLinearGain et utilisée dans l'application
float MotorController::getGain() {
    //if (screen) screen->sendValue("n0", linearGain, "%.2f");
    return linearGain;
}
//____________________________________________________________________________________________

void MotorController::setrampRate(float rampRate)
{
   ramp = rampRate;
}

//permet de tester setrampRate
float MotorController::getRampRate() const {
    //if (screen) screen->sendValue("n0", ramp, "%.2f");
    return ramp;
}
//______________________________________________________________________________

void MotorController::setDirection(DirectionMode dir) {
    direction = dir;
    last_valid_direction = dir;
    //if (screen) screen->sendText("t0", (dir == DirectionMode::REVERSE) ? "REVERSE" : "FORWARD");
}

DirectionMode MotorController::getDirection() const {
    //if (screen) screen->sendText("t0", (direction == DirectionMode::REVERSE) ? "REVERSE" : "FORWARD");
    return direction;
}
//________________________________________________________________________________________________

void MotorController::setControlMode(ControlMode mode) {
    // Si on change de mode, on réinitialise l'instruction et on arrête le moteur
    if (controlMode != mode) {
        // Arrêter le moteur avant le changement de mode
        vesc->setCurrent(0.0f);
        vesc->setRPM(0.0f);
        
        // Réinitialiser l'instruction pour éviter les valeurs inappropriées
        instruction = 0.0f;
        
        // Attendre un peu pour s'assurer que le moteur s'arrête
        HAL_Delay(100);
    }
    
    controlMode = mode;
    instruction = 0.0f;  // Toujours mettre instruction à 0 lors du changement de mode
    screen->showMode(mode);
    if (screen) {
        screen->showMode(mode);
    }
}

ControlMode MotorController::getControlMode() {
    /*if (screen) {
        const char* modeName = "UNKNOWN";
        switch (controlMode) {
            case ControlMode::CADENCE: modeName = "Cadence"; break;
            case ControlMode::TORQUE: modeName = "Torque"; break;
            case ControlMode::POWER_CONCENTRIC: modeName = "Power Concentric"; break;
            case ControlMode::POWER_ECCENTRIC: modeName = "Power Eccentric"; break;
            case ControlMode::LINEAR: modeName = "Linear"; break;
        }
        screen->sendText("t0", modeName);
    }*/
    return controlMode;
}

//______________________________________________________________________________________

void MotorController::setInstruction(float value) {
    // Limitation de sécurité pour la cadence
    if (controlMode == ControlMode::CADENCE && value > 60.0f) {
        value = 60.0f;
    }
    
    instruction = value;

    if (controlMode == ControlMode::LINEAR) return;
    switch (controlMode) {
        case ControlMode::CADENCE:
            setCadence(value);
            break;
        case ControlMode::TORQUE:
            setTorque(value);
            break;
        case ControlMode::POWER_CONCENTRIC:
            setPowerConcentric(value);
            break;
        case ControlMode::POWER_ECCENTRIC:
            setPowerEccentric(value);
            break;
        default:
            break;
    }
}

//permet de tester setInstruction
float MotorController::getInstructionValue() const {
    //if (screen) screen->sendValue("n0", instruction, "%.2f");
    return instruction;
}

//_______________________________________________________________________________________________

void MotorController::setCadence(float rpm)
{
    // Limitation de la vitesse à 60 RPM maximum
    if (rpm > 60.0f) {
        rpm = 60.0f;
    }
    
    // Conversion RPM mécanique -> ERPM
    // Facteur de conversion : 1000/3 pour passer de RPM mécanique à ERPM
    const float RPM_TO_ERPM_FACTOR = 1000.0f / 3.0f;
    rpm = rpm * RPM_TO_ERPM_FACTOR;
    float erpm = applyDirection(rpm);// * polePairs;
    if (screen) {
        char buf[32];
        snprintf(buf, sizeof(buf), "ERPM: %.1f", erpm);

    }
    vesc->setRPM(erpm);
    //if (screen) screen->sendValue("n0", rpm, "%.1f");
}

float MotorController::getCadence()
{
   // On lit l'ERPM et on convertit en RPM mécanique
   float erpmValue = vesc->getRPM();
   // Facteur de conversion inverse : 3/1000 pour passer d'ERPM à RPM mécanique
   const float ERPM_TO_RPM_FACTOR = 3.0f / 1000.0f;
   float rpmValue = erpmValue * ERPM_TO_RPM_FACTOR;
   //if (screen) screen->sendValue("n0", rpmValue, "%.1f");
   return rpmValue;
}

/*void MotorController::setPolePairs(int polePairs_)
{
    if (polePairs_ > 0) polePairs = polePairs_;
}*/
//_________________________________________________________________________________________________

void MotorController::setTorque(float torque)
{
    // Conversion de l'entrée utilisateur (unité d'affichage) vers l'unité interne (Nm)
    // L'utilisateur entre des valeurs multipliées par 10000 pour plus de précision
    const float DISPLAY_TO_INTERNAL_FACTOR = 1.0f / 10000.0f;
    torque = torque * DISPLAY_TO_INTERNAL_FACTOR;
    
    // Limitation de la valeur de torque
	if (torque > 0.0015f) torque = 0.0015f;
	if (torque < -0.0015f) torque = -0.0015f;

	float effectiveTorque = applyDirection(torque);

    float current = computations.computeCurrentFromTorque(effectiveTorque);

    if (screen) {
        char buf[32];
        snprintf(buf, sizeof(buf), "CUR: %.2f", current);
    }
    vesc->setCurrent(current);
}

//permet de tester setTorque
void MotorController::setCurrent(float current) {
   vesc->setCurrent(current);
}

//permet de tester setCurrent
float MotorController::getCurrent() {
   float current = vesc->getCurrent();
   char buf[32];
   snprintf(buf, sizeof(buf), "CUR: %.4f", current);
   screen->sendText("err", buf);
   return current;
}

float MotorController::getTorque() {
   float current = vesc->getCurrent();
   float torque = computations.computeTorqueFromCurrent(current);
   // Conversion pour l'affichage : multiplication par 10000 pour cohérence avec l'entrée
   const float INTERNAL_TO_DISPLAY_FACTOR = 10000.0f;
   torque = torque * INTERNAL_TO_DISPLAY_FACTOR;
   return torque; // Ne pas appliquer applyDirection ici
}


//_____________________________________________________________________________

void MotorController::setPowerConcentric(float power)
{
   direction = DirectionMode::FORWARD;
   power = power/10;
   power = fabs(power);

   if(power> 1.0f)
   {
	   power = 1.0f;
   }

   float cadence = getCadence();

   if (fabs(cadence) < 5.0f) {
       vesc->setCurrent(0.0f);
       return;
   }

   float omega = computations.computeOmega(cadence);
   float torque = power / omega;

   // Limiter le couple à une valeur raisonnable
   const float maxTorque = 0.0015f;
   if (torque > maxTorque) torque = maxTorque;
   if (torque < -maxTorque) torque = -maxTorque;

   float effectiveTorque = applyDirection(torque);

   float current = computations.computeCurrentFromTorque(effectiveTorque);
   lastAppliedCurrent = current;
   vesc->setCurrent(current);
}

void MotorController::setPowerEccentric(float power)
{
	direction = DirectionMode::FORWARD;
	power = power/10;
	power = fabs(power);

    if(power> 1.0f)
    {
	    power = 1.0f;
    }

   float cadence = getCadence();

   if (fabs(cadence) < 5.0f) {
       //if (screen) screen->sendText("t0", "Cadence trop basse");
       vesc->setCurrent(0.0f);
       return;
   }

   float omega = computations.computeOmega(cadence);
   float torque = -power / omega;

   const float maxTorque = 0.0015f;
   if (torque > maxTorque) torque = maxTorque;
   if (torque < -maxTorque) torque = -maxTorque;

   // Appliquer la direction uniquement à la consigne utilisateur
   float effectiveTorque = applyDirection(torque);
   float current = computations.computeCurrentFromTorque(effectiveTorque);
   lastAppliedCurrent = current;
   vesc->setCurrent(current);
   //if (screen) screen->sendValue("n0", power, "%.1f");
}

float MotorController::getPower() {
    float torque = getTorque();
    float cadence = getCadence();
    float omega = computations.computeOmega(cadence);
    float power = computations.computePower(torque, omega);
    //if (screen) screen->sendValue("n0", power, "%.1f");
    return power;
}

//_______________________________________________________________________________

void MotorController::setLinear(float gain, float cadence) {
    linearGain = gain;
    float torque = linearGain * cadence;
    // Appliquer la direction uniquement à la consigne utilisateur
    float value = applyDirection(torque);
    float current = computations.computeCurrentFromTorque(value);
    lastAppliedCurrent = current;
    if (screen) {
        char buf[32];
        snprintf(buf, sizeof(buf), "CUR: %.2f", current);
        screen->sendText("err", buf);
    }
    vesc->setCurrent(current);
    /*if (screen) {
        screen->sendValue("n0", torque, "%.2f");
        screen->sendValue("n0", gain, "%.2f");
    }*/
}

void MotorController::update(float measured_cadence) {
    if (controlMode == ControlMode::LINEAR) {
        setLinear(linearGain, measured_cadence);
    }
}

//_________________________________________________________________________________

void MotorController::stop()
{
    // Arrêt d'urgence immédiat
    vesc->setCurrent(0.0f);
    vesc->setRPM(0.0f);
    
    float rampRate = ramp;
    float current = lastAppliedCurrent;
    const float timeStepMs = 50.0f;
    const float timeStepS = timeStepMs / 1000.0f;
    const float maxStep = rampRate * timeStepS;

    // Rampe de descente du courant moteur
    while (fabs(current) > 0.05f) {
        if (current > 0) {
            current -= maxStep;
            if (current < 0) current = 0.0f;
        } else {
            current += maxStep;
            if (current > 0) current = 0.0f;
        }
        vesc->setCurrent(current);
        HAL_Delay(static_cast<uint32_t>(timeStepMs));
    }

    // Freinage actif pour stopper net le moteur
    const float brakeCurrent = -3.0f; // Mets ici la valeur qui te convient (en ampères, typiquement négative)
    vesc->setBrakeCurrent(brakeCurrent);
    HAL_Delay(200); // Laisse le temps au frein de s'appliquer (ajuste si besoin)
    vesc->setBrakeCurrent(0.0f); // Coupe le courant de freinage

    instruction = 0.0f;
    lastAppliedCurrent = 0.0f;
    //if (screen) screen->sendValue("n0", 0.0f, "%.1f");
}

// Méthode d'arrêt d'urgence pour les situations critiques
void MotorController::emergencyStop()
{
    // Arrêt immédiat sans rampe
    vesc->setCurrent(0.0f);
    vesc->setRPM(0.0f);
    vesc->setBrakeCurrent(0.0f);
    
    instruction = 0.0f;
    lastAppliedCurrent = 0.0f;
}



//_________________________________________________________________________
// Gestion de la batterie

float MotorController::getVoltage() const
{
    float voltage = vesc->getVoltage();
    screen->sendValue("voltage", voltage, "%.4f");

    // Estimation du pourcentage de charge (entre 42.0V et 54.6 V)
    const float minV = 40.3f; // le moteur s'arrête complètement
    const float maxV = 54.6f; //tension maximale en pleine charge pour batterie Li-ion 13S
    uint8_t percent = 0;

    if (voltage >= maxV) {
        percent = 100;
    } else if (voltage <= minV) {
        percent = 0;
    } else {
        percent = static_cast<uint8_t>(((voltage - minV) / (maxV - minV)) * 100.0f);
    }

    // Alerte selon le niveau
    if (voltage < 40.3f) // le moteur s'arrête complètement
    {
        screen->sendText("batterie", "Recharge immediate");
    }
    else if (voltage < 44.2f) // le VESC commence à réduire la puissance
    {
        screen->sendText("batterie", "Batterie faible");
    }
    else
    {
        char text[64];
        snprintf(text, sizeof(text), " %.1f V | %d%%", voltage, percent);
        screen->sendText("batterie", text);
    }
    return voltage;
}

//_________________________________________________________________________

float MotorController::applyDirection(float value) {
    return (direction == DirectionMode::REVERSE) ? -value : value;
}

//_________________________________________________________________________________

float MotorController::getDutyCycle()
{
    float duty = vesc->getDutyCycle();
    //if (screen) screen->sendValue("n0", duty * 100.0f, "%.1f");
    return duty;
}

//________________________________________________________________________________

void MotorController::updateScreen() {
    if (!screen) return;  // Sécurité : écran non initialisé



    // Point de débogage
    // screen->sendText("err", "UpdateScreen running");

    float LinearGain = getGain();
    DirectionMode direction = getDirection();
    ControlMode mode = getControlMode();
    float rpm     = getCadence();
    float torque  = getTorque();
    float power   = getPower();
    float dutyCycle = getDutyCycle();
    getVoltage();

    // Affichage à l'écran
    screen->showGain(LinearGain);
    screen->showDirection(direction);
    screen->showMode(mode);
    screen->showCadence(rpm);
    screen->showTorque(torque);
    screen->showPower(power);
    screen->showDutyCycle(dutyCycle);
    screen->showAll(rpm, torque, power);


}
//________________________________________________________________________________
void MotorController::updateFromScreen() {
    if (!screen) return;

    static DirectionMode lastReadDirection = last_valid_direction;
    static DirectionMode debouncedDirection = last_valid_direction;
    static uint32_t lastDirectionChangeMs = 0;
    static uint32_t lastDirMs = 0;
    uint32_t now = HAL_GetTick();

    // Lecture de la direction à chaque appel
    DirectionMode selectedDirection = screen->getDirection();



    if (selectedDirection != lastReadDirection) {
        lastReadDirection = selectedDirection;
        lastDirectionChangeMs = now;
    }
    // Si la direction lue reste stable pendant 300 ms, on applique le changement
    if ((selectedDirection != debouncedDirection) && (now - lastDirectionChangeMs > 300)) {
        debouncedDirection = selectedDirection;
        setDirection(debouncedDirection);
        lastDirMs = now;
    }

    // Lecture des autres paramètres en continu ou avec event si souhaité

    screen->sendText("err", "Avant getMode");
    ControlMode selectedMode = screen->getMode();
    screen->sendText("err", "Après getMode");

    setControlMode(selectedMode);


    float ramp = screen->getRampRate();
    setrampRate(ramp);

    static bool wasStopped = false;
    static float lastInstruction = 0.0f;

    // Traitement du bouton stop pour TOUS les modes (priorité absolue)
    if (screen->getStop()) {
        if (!wasStopped) {
            lastInstruction = instruction;
            emergencyStop();  // Arrêt d'urgence immédiat
            wasStopped = true;
        }
    } else if (wasStopped) {
        wasStopped = false;
        // Redémarrer seulement si on a une instruction valide
        if (lastInstruction > 0.0f) {
            setInstruction(lastInstruction);
        }
    }

        if (!wasStopped) {
            switch (controlMode) {
                case ControlMode::CADENCE: {
          //          screen->sendText("err", "Avant getUserCadence");
                    float rpm = screen->getUserCadence();
            //        screen->sendText("err", "Après getUserCadence");
                    // Mettre à jour la dernière valeur valide si elle est positive
                    if (rpm > 0.0f) {
                        lastValidCadence = rpm;
                        setInstruction(rpm);
                    } else if (lastValidCadence > 0.0f) {
                        // Utiliser la dernière valeur valide si disponible
                        setInstruction(lastValidCadence);
                    } else {
                        // Arrêter le moteur si aucune valeur valide
                        vesc->setCurrent(0.0f);
                        vesc->setRPM(0.0f);
                        instruction = 0.0f;
                    }
                    break;
                }
                case ControlMode::TORQUE: {
              //      screen->sendText("err", "Avant getUserTorque");
                    float torque = screen->getUserTorque();
                //    screen->sendText("err", "Après getUserTorque");
                    // Mettre à jour la dernière valeur valide si elle est positive
                    if (torque > 0.0f) {
                        lastValidTorque = torque;
                        setInstruction(torque);
                    } else if (lastValidTorque > 0.0f) {
                        // Utiliser la dernière valeur valide si disponible
                        setInstruction(lastValidTorque);
                    } else {
                        // Arrêter le moteur si aucune valeur valide
                        vesc->setCurrent(0.0f);
                        instruction = 0.0f;
                    }
                    break;
                }
                case ControlMode::POWER_CONCENTRIC:
                case ControlMode::POWER_ECCENTRIC: {
                  //  screen->sendText("err", "Avant getUserPower");
                    float power = screen->getUserPower();
                    //screen->sendText("err", "Après getUserPower");
                    // Mettre à jour la dernière valeur valide si elle est positive
                    if (power > 0.0f) {
                        lastValidPower = power;
                        setInstruction(power);
                    } else if (lastValidPower > 0.0f) {
                        // Utiliser la dernière valeur valide si disponible
                        setInstruction(lastValidPower);
                    } else {
                        // Arrêter le moteur si aucune valeur valide
                        vesc->setCurrent(0.0f);
                        instruction = 0.0f;
                    }
                    break;
                }
                case ControlMode::LINEAR: {
                    //screen->sendText("err", "Avant getUserLinearGain");
                    float gain = screen->getUserLinearGain();
                    //screen->sendText("err", "Après getUserLinearGain");
                    if (gain >= 0.0f) {
                        setLinearGain(gain);
                    } else {
                        setLinearGain(getGain());
                    }
                    break;
                }
                default:
                    break;
            }
        }

        if (screen->getCalibrateRequest()) {
            calibrateTorqueConstant();
        }


}


ScreenDisplay* MotorController::getscreen()
{
	return screen;
}
