#pragma once

#include <cstdint>
#include <cstring>

#include "stm32f4xx_hal.h"
//#include "ScreenDisplay.hpp"
class ScreenDisplay;

#include <main.h>

#define COMM_GET_VALUES          4
#define COMM_SET_CURRENT         6
#define COMM_SET_CURRENT_BRAKE   7   // Nouvelle commande pour le freinage !
#define COMM_SET_RPM             8

typedef struct {
    float rpm;
    float current;
    float dutyCycle;
    float voltage;
    float pidPosNow; // Nouveau champ VESC 5.x
    float mos1Temp;
    float mos2Temp;
    float mos3Temp;
    float vd;
    float vq;
    // Ajoute d'autres champs si tu veux (voir le format officiel)
} VESCValues;

class VESCInterface {
private:
    UART_HandleTypeDef *uart;
    VESCValues values;

    int getValues() {
        uint8_t txBuf[6];
        uint16_t crc;
        txBuf[0] = 0x02;
        txBuf[1] = 0x01;
        txBuf[2] = COMM_GET_VALUES;
        crc = crc16(&txBuf[2], 1);
        txBuf[3] = (crc >> 8) & 0xFF;
        txBuf[4] = crc & 0xFF;
        txBuf[5] = 0x03;

        if (HAL_UART_Transmit(uart, txBuf, sizeof(txBuf), 100) != HAL_OK) {
            return 0;
        }

        // Lire la trame de réponse du VESC (format v5.x ~73 octets payload)
        uint8_t startByte;
        if (HAL_UART_Receive(uart, &startByte, 1, 100) != HAL_OK) {
            return 0;
        }
        if (startByte != 0x02 && startByte != 0x03) {
            return 0;
        }

        uint16_t payloadLen = 0;
        if (startByte == 0x02) {
            uint8_t lenByte;
            if (HAL_UART_Receive(uart, &lenByte, 1, 100) != HAL_OK) return 0;
            payloadLen = lenByte;
        } else {
            uint8_t lenBytes[2];
            if (HAL_UART_Receive(uart, lenBytes, 2, 100) != HAL_OK) return 0;
            payloadLen = ((uint16_t)lenBytes[0] << 8) | lenBytes[1];
        }

        uint8_t rxPayload[100]; // 73 suffisent, 100 par sécurité
        if (payloadLen > sizeof(rxPayload)) {
            for (uint16_t i = 0; i < payloadLen + 3; ++i) {
                uint8_t dump;
                HAL_UART_Receive(uart, &dump, 1, 10);
            }
            return 0;
        }
        if (HAL_UART_Receive(uart, rxPayload, payloadLen, 100) != HAL_OK) {
            return 0;
        }

        uint8_t crcBytes[2];
        uint8_t endByte;
        if (HAL_UART_Receive(uart, crcBytes, 2, 100) != HAL_OK) return 0;
        if (HAL_UART_Receive(uart, &endByte, 1, 100) != HAL_OK) return 0;
        if (endByte != 0x03) return 0;

        uint16_t crcReceived = ((uint16_t)crcBytes[0] << 8) | crcBytes[1];
        uint16_t crcCalc = crc16(rxPayload, payloadLen);
        if (crcReceived != crcCalc) return 0;

        // Mapping officiel VESC v5.x (voir documentation ou src/fw/comm_uart.c)
        if (payloadLen >= 73 && rxPayload[0] == COMM_GET_VALUES) {
            int idx = 0;
            idx++; // rxPayload[0] = COMM_GET_VALUES

            idx += 2; // temp_fet (int16)
            idx += 2; // temp_motor (int16)
            int32_t avg_motor_current = (rxPayload[idx] << 24) | (rxPayload[idx+1] << 16) | (rxPayload[idx+2] << 8) | rxPayload[idx+3];
            values.current = avg_motor_current / 100.0f; idx += 4;
            idx += 4; // avg_input_current (int32)
            idx += 4; // avg_id
            idx += 4; // avg_iq

            int16_t duty_now = (int16_t)((rxPayload[idx] << 8) | rxPayload[idx+1]);
            values.dutyCycle = duty_now / 1000.0f; idx += 2;

            int32_t rpm = (rxPayload[idx] << 24) | (rxPayload[idx+1] << 16) | (rxPayload[idx+2] << 8) | rxPayload[idx+3];
            values.rpm = (float)rpm; idx += 4;

            uint16_t rawV = ((uint16_t)rxPayload[idx] << 8) | rxPayload[idx+1];
            values.voltage = rawV / 10.0f; idx += 2;

            // Sauter amp_hours, watt_hours, tachos, fault, etc. jusqu'à pid_pos_now (voir doc officielle)
            idx += 4*4;   // amp_hours, amp_hours_charged, watt_hours, watt_hours_charged
            idx += 4*2;   // tachometer, tachometer_abs
            idx += 1;     // fault_code

            // pid_pos_now (float32)
            uint32_t pidpos = (rxPayload[idx]<<24) | (rxPayload[idx+1]<<16) | (rxPayload[idx+2]<<8) | rxPayload[idx+3];
            values.pidPosNow = *((float*)&pidpos); idx += 4;

            // controller_id
            idx += 1;

            // MOS temps (int16 *3)
            int16_t mos1_temp = (int16_t)((rxPayload[idx]<<8) | rxPayload[idx+1]);
            values.mos1Temp = mos1_temp / 10.0f; idx += 2;
            int16_t mos2_temp = (int16_t)((rxPayload[idx]<<8) | rxPayload[idx+1]);
            values.mos2Temp = mos2_temp / 10.0f; idx += 2;
            int16_t mos3_temp = (int16_t)((rxPayload[idx]<<8) | rxPayload[idx+1]);
            values.mos3Temp = mos3_temp / 10.0f; idx += 2;

            // vd (int16)
            int16_t vd = (int16_t)((rxPayload[idx]<<8) | rxPayload[idx+1]);
            values.vd = vd / 1000.0f; idx += 2;
            // vq (int16)
            int16_t vq = (int16_t)((rxPayload[idx]<<8) | rxPayload[idx+1]);
            values.vq = vq / 1000.0f; idx += 2;

            // Ajoute ici d'autres champs si tu veux, avec le même principe

        } else {
            return 0;
        }

        return 1;
    }

public:
    VESCInterface(UART_HandleTypeDef *huart) : uart(huart) {
        memset(&values, 0, sizeof(values));
    }

    uint16_t crc16(const uint8_t *data, uint16_t len) {
        uint16_t crc = 0x0000;
        for (uint16_t i = 0; i < len; ++i) {
            crc ^= (uint16_t)data[i] << 8;
            for (uint8_t bit = 0; bit < 8; ++bit) {
                if (crc & 0x8000) {
                    crc <<= 1;
                    crc ^= 0x1021;
                } else {
                    crc <<= 1;
                }
            }
        }
        return crc;
    }

    // Commande courant moteur (A)
    void setCurrent(float current) {
        int32_t milliamp = (int32_t)(current * 1000.0f);
        uint8_t buf[11];
        uint16_t crc;
        buf[0] = 0x02;
        buf[1] = 0x05;
        buf[2] = COMM_SET_CURRENT;
        buf[3] = (milliamp >> 24) & 0xFF;
        buf[4] = (milliamp >> 16) & 0xFF;
        buf[5] = (milliamp >> 8) & 0xFF;
        buf[6] = milliamp & 0xFF;
        crc = crc16(&buf[2], 5);
        buf[7] = (crc >> 8) & 0xFF;
        buf[8] = crc & 0xFF;
        buf[9] = 0x03;
        HAL_UART_Transmit(uart, buf, 10, 100);
    }


    // Commande courant de freinage (A) : Utiliser une valeur négative pour freiner fort.
    void setBrakeCurrent(float brakeCurrent) {
        int32_t milliamp = (int32_t)(brakeCurrent * 1000.0f);
        uint8_t buf[11];
        uint16_t crc;
        buf[0] = 0x02;
        buf[1] = 0x05;
        buf[2] = COMM_SET_CURRENT_BRAKE;
        buf[3] = (milliamp >> 24) & 0xFF;
        buf[4] = (milliamp >> 16) & 0xFF;
        buf[5] = (milliamp >> 8) & 0xFF;
        buf[6] = milliamp & 0xFF;
        crc = crc16(&buf[2], 5);
        buf[7] = (crc >> 8) & 0xFF;
        buf[8] = crc & 0xFF;
        buf[9] = 0x03;
        HAL_UART_Transmit(uart, buf, 10, 100);
    }

    void setRPM(int32_t rpm) {
        uint8_t buf[11];
        uint16_t crc;
        buf[0] = 0x02;
        buf[1] = 0x05;
        buf[2] = COMM_SET_RPM;
        buf[3] = (rpm >> 24) & 0xFF;
        buf[4] = (rpm >> 16) & 0xFF;
        buf[5] = (rpm >> 8) & 0xFF;
        buf[6] = rpm & 0xFF;
        crc = crc16(&buf[2], 5);
        buf[7] = (crc >> 8) & 0xFF;
        buf[8] = crc & 0xFF;
        buf[9] = 0x03;
        HAL_UART_Transmit(uart, buf, 10, 100);
    }

    float getRPM()    { return getValues() ? values.rpm : -1.0f; }
    float getCurrent(){ return getValues() ? values.current : -1.0f; }
    float getDutyCycle(){ return getValues() ? values.dutyCycle : -1.0f; }
    float getVoltage(){ return getValues() ? values.voltage : -1.0f; }

};

