# Test de la réception directe UART5

## Modifications apportées

### 1. Suppression du callback d'interruption
- ❌ Supprimé `HAL_UART_Receive_IT()` dans main.cpp
- ❌ Supprimé `HAL_UART_RxCpltCallback()` dans freertos.cpp
- ❌ Supprimé la queue `QueueEMGHandle`
- ❌ Supprimé la variable `uart5_rx_data`

### 2. Réception directe dans la tâche
- ✅ `HAL_UART_Receive()` avec timeout dans la tâche UART_RX_EMG
- ✅ Traitement direct des données reçues
- ✅ Debug amélioré avec messages sur l'écran

## Messages de debug attendus

Au démarrage, vous devriez voir sur l'écran :
```
Lancement de la tâche EMG
UART5: Baud=115200, Word=0, Stop=0, Parity=0
Test UART5 envoye
Debut reception EMG directe
```

Puis, quand des données arrivent :
```
RX: 0x31 '1' idx=0
RX: 0x32 '2' idx=1
RX: 0x33 '3' idx=2
RX: 0x2E '.' idx=3
RX: 0x34 '4' idx=4
RX: 0x35 '5' idx=5
RX: 0x0A '.' idx=6
EMG_Value: 123.45 -> 123.45
```

## Test avec le script Python

1. **Lister les ports :**
```bash
python list_ports.py
```

2. **Test interactif :**
```bash
python test_uart5_interactive.py
```

3. **Envoyer des valeurs de test :**
```
EMG value: 123.45
EMG value: 67.89
EMG value: 234.56
```

## Vérifications

### Si aucun message n'apparaît sur l'écran :
1. **Vérifiez la compilation** : Pas d'erreurs de compilation
2. **Vérifiez le flash** : Le nouveau code est bien flashé
3. **Vérifiez les connexions** : ESP32 Pin 17 → STM32 PD2

### Si les messages de démarrage apparaissent mais pas de données :
1. **Vérifiez l'ESP32** : Envoie-t-il bien des données ?
2. **Testez avec le script Python** : Les données arrivent-elles ?
3. **Vérifiez le format** : L'ESP32 envoie-t-il "123.45\n" ?

### Si les données arrivent mais ne sont pas traitées :
1. **Vérifiez le format** : Les données se terminent-elles par '\n' ?
2. **Vérifiez le parsing** : Les valeurs sont-elles numériques ?

## Avantages de cette approche

1. **Plus simple** : Pas de synchronisation entre interrupt et tâche
2. **Plus fiable** : Pas de risque de perte de données dans la queue
3. **Debug plus facile** : Tous les messages de debug dans la même tâche
4. **Timeout configurable** : Peut attendre les données sans bloquer

## Timeout et performance

- **Timeout de réception** : 100ms
- **Message d'attente** : Toutes les 5 secondes sans activité
- **LED de debug** : Toggle à chaque byte reçu
- **Priorité de la tâche** : `osPriorityRealtime` (la plus haute)

## Test rapide

Pour tester rapidement, envoyez cette séquence depuis l'ESP32 :
```cpp
Serial1.println("123.45");
delay(1000);
Serial1.println("67.89");
delay(1000);
Serial1.println("234.56");
```

Vous devriez voir sur l'écran du STM32 :
```
RX: 0x31 '1' idx=0
RX: 0x32 '2' idx=1
...
EMG_Value: 123.45 -> 123.45
``` 