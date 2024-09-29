#!/bin/bash

if [ "$USER" == "open" ]; then
    echo "Connecting to space systems..."
    echo "Linking to DDR Mondbasis..."
    echo "Asking the party for permission to unlock door...."
    echo "Waiting for Faxmodem..."
    echo "chanelling the force"
    echo "Opening door..."
    PIN=17 # pin
elif [ "$USER" == "close" ]; then
    echo "Connecting to space systems..."
    echo "Linking to DDR Mondbasis..."
    echo "Rickrolling folks on mondbasis..."
    echo "Locating Messlatte..."
    echo "Closing door..."
    PIN=22 # pin 15
else
    echo "You shall not pass!"
    exit 1
fi

sudo raspi-gpio set $PIN op

sudo raspi-gpio set $PIN dl

sleep 1

sudo raspi-gpio set $PIN dh

echo "Action completed on GPIO pin $PIN"
