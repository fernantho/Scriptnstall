#!/bin/bash

cd ~/
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install qt5-default -y
sudo apt-get install git -y
sudo apt-get install make -y
sudo apt-get install g++ -y
sudo rm -r ~/nheqminer
sudo apt-get install cmake build-essential libboost-all-dev -y
rm -rf nheqminer/
#Getting repository nheqminer
git clone https://github.com/feeleep75/nheqminer.git
cd nheqminer/nheqminer
mkdir build
cd build
cmake ..
make
NPROC=$(nproc)
./nheqminer/nheqminer/build/nheqminer -l zcl.coinmine.pl:7007  -u fernantho.miner24 -p goZCL
