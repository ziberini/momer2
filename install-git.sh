#!/bin/bash

echo 'Hello World!'

which git &> /dev/null
if [ $? -ne 0 ]
then
    sudo apt update
    sudo apt install git
    git --version
exit
fi