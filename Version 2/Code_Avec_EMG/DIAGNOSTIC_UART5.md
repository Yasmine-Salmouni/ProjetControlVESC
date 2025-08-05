# Diagnostic UART5 - Réception EMG

## Problème
Pas de réception des données EMG envoyées par l'ESP32 sur l'UART5 du STM32.

## Configuration actuelle
- **ESP32** : Pin 17 (TX) → **STM32** : Pin PD2 (UART5_RX)
- **Baud rate** : 115200
- **Format** : 8N1 (8 bits, pas de parité, 1 bit de stop)

## Modifications apportées

### 1. Correction de la queue FreeRTOS
- Changé la taille de la queue de `uint16_t` vers `uint8_t`
- Ajouté une vérification de l'espace disponible dans la queue

### 2. Amélioration du debug
- Ajout de messages de debug détaillés dans le callback UART
- Affichage de la configuration UART5 au démarrage
- Messages de debug dans la tâche de traitement

### 3. Configuration IOC
- Ajout du paramètre BaudRate dans le fichier IOC

## Étapes de diagnostic

### 1. Vérification matérielle
```bash
# Vérifiez les connexions :
# ESP32 Pin 17 (TX) → STM32 PD2 (UART5_RX)
# ESP32 3V3 → STM32 3V3
# ESP32 GND → STM32 GND
```

### 2. Test de communication
Utilisez le script Python fourni :
```bash
python test_uart5.py
```

### 3. Messages de debug attendus
Sur l'écran du STM32, vous devriez voir :
- "UART5: Baud=115200, Word=0, Stop=0, Parity=0"
- "Test UART5 envoye"
- "UART5_RX: 0xXX 'X' (ASCII: XX)" pour chaque byte reçu
- "Task_RX: 0xXX 'X' idx=X" pour chaque byte traité

### 4. Vérification du code ESP32
Assurez-vous que votre ESP32 envoie bien :
- Des valeurs numériques terminées par '\n'
- Exemple : "123.45\n", "67.89\n"

## Solutions possibles

### Si aucun message de debug n'apparaît :
1. **Problème de câblage** : Vérifiez les connexions
2. **Problème de niveau logique** : ESP32 (3.3V) → STM32 (3.3V) ✓
3. **Problème de configuration UART** : Vérifiez le baud rate

### Si les messages de debug apparaissent mais pas de données :
1. **Problème de format** : Vérifiez que l'ESP32 envoie des nombres + '\n'
2. **Problème de timing** : Vérifiez la fréquence d'envoi

### Si les données arrivent mais ne sont pas traitées :
1. **Problème de parsing** : Vérifiez le format des données
2. **Problème de buffer** : Vérifiez la taille des buffers

## Test rapide
Pour tester rapidement, modifiez temporairement le code ESP32 pour envoyer :
```cpp
Serial1.println("123.45");
delay(1000);
```

## Commandes utiles
```bash
# Compiler le projet
make clean && make

# Flasher le STM32
st-flash write Debug/ProjetControlOdriveBis.bin 0x08000000

# Monitorer l'UART de debug (USART2)
screen /dev/ttyUSB0 9600
``` 