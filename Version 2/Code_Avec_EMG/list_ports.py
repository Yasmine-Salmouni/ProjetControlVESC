#!/usr/bin/env python3
"""
Script pour lister tous les ports COM disponibles
"""

import serial.tools.list_ports

def list_available_ports():
    """Liste tous les ports série disponibles"""
    print("=== Ports série disponibles ===")
    
    ports = serial.tools.list_ports.comports()
    
    if not ports:
        print("Aucun port série trouvé")
        return
    
    for port in ports:
        print(f"Port: {port.device}")
        print(f"  Description: {port.description}")
        print(f"  Fabricant: {port.manufacturer}")
        print(f"  Produit: {port.product}")
        print(f"  VID:PID: {port.vid:04X}:{port.pid:04X}")
        print("---")

if __name__ == "__main__":
    list_available_ports() 