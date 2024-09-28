#!/bin/bash

if [ "$USER" == "open" ]; then
    echo "Connecting to space systems..."
    echo "Linking to DDR Mondbasis..."
    echo "Asking the party for permission to unlock door...."
    echo "Waiting for Faxmodem..."
    echo "chanelling the force"
    echo "Opening door..."
    PIN=17
elif [ "$USER" == "close" ]; then
    echo "Connecting to space systems..."
    echo "Linking to DDR Mondbasis..."
    echo "Rickrolling folks on mondbasis..."
    echo "Locating Messlatte..."
    echo "Closing door..."
    PIN=27 
else
    exit 1
fi

if [ ! -d /sys/class/gpio/gpio$PIN ]; then
  echo $PIN > /sys/class/gpio/export
fi

echo "in" > /sys/class/gpio/gpio$PIN/direction
echo "out" > /sys/class/gpio/gpio$PIN/direction

echo "0" > /sys/class/gpio/gpio$PIN/value
sleep 1 
echo "1" > /sys/class/gpio/gpio$PIN/value
echo $PIN > /sys/class/gpio/unexport
