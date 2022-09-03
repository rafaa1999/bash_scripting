#!/bin/bash

DRIVER=$(curl -s https://developer.nvidia.com/drive/downloads | grep -m1 -o "support")

echo $DRIVER
if[[-z $DRIVER]]
    then
        echo "there is a new driver"
    else
        echo "your dirver is the latest version"
fi




