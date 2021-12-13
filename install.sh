#!/bin/bash

#upgrade ubuntu
apt-get update -y
sudo apt-get upgrade -y

#Get Github repo
cd/home/ubuntu
git clone --recursive https://github.com/DarkflameUniverse/DarkflameServer

#install needed stuff
apt install gcc -y
apt install cmake -y
apt install zlib1g-dev -y
apt install build-essential -y

#build actual DarkflameServer
cd /DarkflameServer
mkdir -p build
./build.shcd build
cmake ..
make

