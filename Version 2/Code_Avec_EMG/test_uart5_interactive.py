#!/usr/bin/env python3
"""
Script de test interactif pour la communication UART5
"""

import serial
import serial.tools.list_ports
import time
import sys

def select_port():
    """Permet à l'utilisateur de sélectionner un port"""
    ports = serial.tools.list_ports.comports()
    
    if not ports:
        print("Aucun port série trouvé!")
        return None
    
    print("Ports disponibles:")
    for i, port in enumerate(ports):
        print(f"{i+1}. {port.device} - {port.description}")
    
    while True:
        try:
            choice = int(input(f"Sélectionnez un port (1-{len(ports)}): ")) - 1
            if 0 <= choice < len(ports):
                return ports[choice].device
            else:
                print("Choix invalide!")
        except ValueError:
            print("Veuillez entrer un nombre!")

def test_uart_communication(port_name):
    """Test de communication UART"""
    
    BAUD_RATE = 115200
    
    try:
        # Ouverture du port série
        ser = serial.Serial(port_name, BAUD_RATE, timeout=1)
        print(f"Port {port_name} ouvert avec succès")
        
        # Attendre que la connexion soit établie
        time.sleep(2)
        
        # Lire les données disponibles
        print("Lecture des données reçues...")
        data_received = False
        while ser.in_waiting > 0:
            data = ser.read(ser.in_waiting)
            print(f"Données reçues: {data}")
            print(f"ASCII: {data.decode('ascii', errors='ignore')}")
            data_received = True
        
        if not data_received:
            print("Aucune donnée reçue")
        
        # Mode interactif
        print("\nMode interactif - Entrez des valeurs EMG (ou 'quit' pour quitter):")
        while True:
            user_input = input("EMG value: ")
            if user_input.lower() == 'quit':
                break
            
            # Envoyer la valeur
            test_message = user_input + "\n"
            print(f"Envoi: {test_message.strip()}")
            ser.write(test_message.encode())
            
            # Attendre et lire la réponse
            time.sleep(0.5)
            if ser.in_waiting > 0:
                response = ser.read(ser.in_waiting)
                print(f"Réponse: {response}")
                print(f"ASCII: {response.decode('ascii', errors='ignore')}")
            else:
                print("Aucune réponse reçue")
        
        # Fermer le port
        ser.close()
        print("Test terminé")
        
    except serial.SerialException as e:
        print(f"Erreur d'ouverture du port série: {e}")
        print("Vérifiez que:")
        print("1. Le câble USB est connecté")
        print("2. Le bon port COM est utilisé")
        print("3. Aucune autre application n'utilise le port")
    except KeyboardInterrupt:
        print("\nTest interrompu par l'utilisateur")
        if 'ser' in locals():
            ser.close()
    except Exception as e:
        print(f"Erreur: {e}")

if __name__ == "__main__":
    print("=== Test interactif de communication UART5 ===")
    
    # Sélection automatique ou manuelle du port
    if len(sys.argv) > 1:
        port_name = sys.argv[1]
        print(f"Utilisation du port: {port_name}")
    else:
        port_name = select_port()
        if not port_name:
            sys.exit(1)
    
    test_uart_communication(port_name) 