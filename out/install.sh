#!/bin/bash

# Questo script installa tutti i pacchetti .deb generati nella directory corrente.
# Utilizza 'apt' per gestire automaticamente le dipendenze e i conflitti.

echo "Installazione di tutti i pacchetti .deb dalla directory corrente..."
echo "Verrà richiesto di confermare la rimozione dei pacchetti in conflitto (es. bluez, pipewire-audio)."

# Il comando 'apt install ./*.deb' è il metodo raccomandato.
# Calcola l'ordine corretto, rimuove i pacchetti in conflitto (es. bluez, pipewire-audio)
# e installa le dipendenze mancanti, tutto in un unico passaggio.
sudo apt install -y ./*.deb
