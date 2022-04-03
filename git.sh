#!/bin/bash

GITHUB_USER_NAME="ziberini"

GIT_REPO_NAME='ecomm'

which git &> /dev/null
if [ $? -ne 0 ]; then
    sudo apt update
    sudo apt install git
fi
    
which git &> /dev/null
if [ $? -eq 0 ]; then 
    cd /mnt/c/Users/'Mohammed Omer'/Desktop
    mkdir Pull-Repos 
    cd Pull-Repos
    git clone https://github.com/${GITHUB_USER_NAME}/${GIT_REPO_NAME}.git
    git clone https://github.com/${GITHUB_USER_NAME}/momer2.git
fi

which zip &> /dev/null
if [ $? -ne 0 ]; then
    sudo apt update
    yes | sudo apt-get install zip
fi 
   
which zip &> /dev/null
if [ $? -eq 0 ]; then
    cd /mnt/c/Users/'Mohammed Omer'/Desktop/Pull-Repos
    zip -r ../Pull-Repos.zip *
    mv /mnt/c/Users/'Mohammed Omer'/Desktop/Pull-Repos.zip /mnt/c/Users/'Mohammed Omer'/Desktop/Pull-Repos
fi