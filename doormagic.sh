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
    echo "you shall not pass"
    exit 1
fi

if [ ! -d /sys/class/gpio/gpio$PIN ]; then
  echo $PIN | sudo tee /sys/class/gpio/export
fi

echo "in" | sudo tee /sys/class/gpio/gpio$PIN/direction
echo "out" | sudo tee /sys/class/gpio/gpio$PIN/direction

echo "0" | sudo tee /sys/class/gpio/gpio$PIN/value
sleep 1 
echo "1" | sudo tee /sys/class/gpio/gpio$PIN/value
echo $PIN | sudo tee /sys/class/gpio/unexport
