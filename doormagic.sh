#!/bin/bash

if [ "$USER" == "open" ]; then
    echo "Connecting to space systems..."
    echo "Linking to DDR Mondbasis..."
    echo "Asking the party for permission to unlock door...."
    echo "Waiting for Faxmodem..."
    echo "Chanelling the force..."
    echo "Opening door..."
    PIN=17 # pin 11
elif [ "$USER" == "close" ]; then
    echo "Connecting to space systems..."
    echo "Linking to DDR Mondbasis..."
    echo "Rickrolling folks on Mondbasis..."
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

sudo raspi-gpio set $PIN dl

echo "Action completed on GPIO pin $PIN, set back to low."
