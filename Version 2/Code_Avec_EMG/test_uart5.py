#!/usr/bin/env python3
"""
Script de test pour la communication UART5 entre ESP32 et STM32
"""

import serial
import time
import struct

def test_uart_communication():
    """Test de communication UART avec l'ESP32"""
    
    # Configuration du port série (ajustez selon votre configuration)
    # Windows: COM3, COM4, etc.
    # Linux: /dev/ttyUSB0, /dev/ttyACM0, etc.
    PORT = 'COM3'  # Ajustez selon votre port (utilisez list_ports.py pour identifier)
    BAUD_RATE = 115200
    
    try:
        # Ouverture du port série
        ser = serial.Serial(PORT, BAUD_RATE, timeout=1)
        print(f"Port {PORT} ouvert avec succès")
        
        # Attendre que la connexion soit établie
        time.sleep(2)
        
        # Lire les données disponibles
        print("Lecture des données reçues...")
        while ser.in_waiting > 0:
            data = ser.read(ser.in_waiting)
            print(f"Données reçues: {data}")
            print(f"ASCII: {data.decode('ascii', errors='ignore')}")
        
        # Envoyer un message de test
        test_message = "123.45\n"
        print(f"Envoi du message de test: {test_message}")
        ser.write(test_message.encode())
        
        # Attendre et lire la réponse
        time.sleep(1)
        if ser.in_waiting > 0:
            response = ser.read(ser.in_waiting)
            print(f"Réponse reçue: {response}")
            print(f"ASCII: {response.decode('ascii', errors='ignore')}")
        
        # Fermer le port
        ser.close()
        print("Test terminé")
        
    except serial.SerialException as e:
        print(f"Erreur d'ouverture du port série: {e}")
        print("Vérifiez que:")
        print("1. Le câble USB est connecté")
        print("2. Le bon port COM est utilisé")
        print("3. Aucune autre application n'utilise le port")
    except Exception as e:
        print(f"Erreur: {e}")

if __name__ == "__main__":
    print("=== Test de communication UART5 ===")
    test_uart_communication() 