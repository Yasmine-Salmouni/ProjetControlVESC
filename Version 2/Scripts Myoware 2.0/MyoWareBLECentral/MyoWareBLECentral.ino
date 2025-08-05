/*
 * ESP32 BLE Central vers Serial1 (UART)
 * Utilise la bibliothèque ESP32 BLE Arduino (Kolban)
 * RX = GPIO 16, TX = GPIO 17
 */

#include <BLEDevice.h>
#include <BLEUtils.h>
#include <BLEScan.h>
#include <BLEAdvertisedDevice.h>

#define NUS_SERVICE_UUID        "6e400001-b5a3-f393-e0a9-e50e24dcca9e"
#define NUS_CHAR_TX_UUID        "6e400003-b5a3-f393-e0a9-e50e24dcca9e" // Notify

BLEClient* pClient;
BLERemoteCharacteristic* pRemoteTXChar;
bool deviceConnected = false;
BLEAdvertisedDevice* myDevice = nullptr;

class MyAdvertisedDeviceCallbacks : public BLEAdvertisedDeviceCallbacks {
  void onResult(BLEAdvertisedDevice advertisedDevice) {
    if (advertisedDevice.haveServiceUUID() && advertisedDevice.isAdvertisingService(BLEUUID(NUS_SERVICE_UUID))) {
      Serial.print("[DEBUG] Périphérique NUS trouvé !\n");
      myDevice = new BLEAdvertisedDevice(advertisedDevice);
      BLEDevice::getScan()->stop();
    }
  }
};

void setup() {
  Serial.begin(115200);
  Serial1.begin(115200, SERIAL_8N1, 16, 17);

  Serial.print("[DEBUG] Démarrage BLE Central (ESP32)\n");

  BLEDevice::init("");
  BLEScan* pBLEScan = BLEDevice::getScan();
  pBLEScan->setAdvertisedDeviceCallbacks(new MyAdvertisedDeviceCallbacks());
  pBLEScan->setActiveScan(true);
}

void loop() {
  if (!deviceConnected) {
    Serial.print("[DEBUG] Scan BLE en cours...\n");
    BLEScan* pBLEScan = BLEDevice::getScan();
    myDevice = nullptr;
    pBLEScan->start(5, false);

    if (myDevice) {
      Serial.print("[DEBUG] Connexion à : ");
      Serial.println(myDevice->getAddress().toString().c_str());

      pClient = BLEDevice::createClient();
      if (pClient->connect(myDevice)) {
        Serial.print("[DEBUG] Connecté !\n");
        BLERemoteService* pRemoteService = pClient->getService(BLEUUID(NUS_SERVICE_UUID));
        if (pRemoteService == nullptr) {
          Serial.print("[DEBUG] Service NUS non trouvé.\n");
          pClient->disconnect();
          return;
        }
        pRemoteTXChar = pRemoteService->getCharacteristic(BLEUUID(NUS_CHAR_TX_UUID));
        if (pRemoteTXChar == nullptr) {
          Serial.print("[DEBUG] Caractéristique TX non trouvée.\n");
          pClient->disconnect();
          return;
        }
        if (pRemoteTXChar->canNotify()) {
          pRemoteTXChar->registerForNotify([](BLERemoteCharacteristic* pBLERemoteCharacteristic, uint8_t* data, size_t length, bool isNotify) {
            Serial1.write(data, length);
            Serial1.write('\n'); // Ajout du séparateur '\n' après chaque trame
            Serial.print("[DEBUG] Données reçues et envoyées sur UART : ");
            for (size_t i = 0; i < length; ++i) {
              if (data[i] < 16) Serial.print("0");
              Serial.print(data[i], HEX);
              Serial.print(" ");
            }
            Serial.print("| ASCII : ");
            for (size_t i = 0; i < length; ++i) {
              if (data[i] >= 32 && data[i] <= 126) Serial.print((char)data[i]);
              else Serial.print(".");
            }
            Serial.println();
          });
          deviceConnected = true;
          Serial.print("[DEBUG] Abonné aux notifications TX.\n");
        }
      } else {
        Serial.print("[DEBUG] Échec de connexion.\n");
      }
      delete myDevice;
      myDevice = nullptr;
    } else {
      Serial.print("[DEBUG] Aucun périphérique NUS trouvé.\n");
      delay(2000);
    }
  } else {
    if (!pClient->isConnected()) {
      Serial.print("[DEBUG] Déconnecté. Nouvelle tentative...\n");
      deviceConnected = false;
      delay(1000);
    }
    delay(100);
  }
}