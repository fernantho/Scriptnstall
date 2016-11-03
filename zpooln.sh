cd ~/
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install qt5-default -y
sudo apt-get install git -y
sudo apt-get install make -y
sudo apt-get install g++ -y
sudo rm -rf ~/nheqminer
sudo apt-get install cmake build-essential libboost-all-dev -y
git clone -b Linux https://github.com/nicehash/nheqminer.git
#git clone https://github.com/etherchain-org/nheqminer.git
cd nheqminer/cpu_xenoncat/Linux/asm/
sh assemble.sh
cd ../../../Linux_cmake/nheqminer_cpu
cmake .
make -j $(nproc)
NPROC=$(nproc)
minero=hostname
#~/nheqminer/Linux_cmake/nheqminer_cpu -t $NPROC -l eu1-zcash.flypool.org:3333 -u address.worker
~/nheqminer/Linux_cmake/nheqminer_cpu -l zec-eu.suprnova.cc:2142 -u fernantho.$minero -p goZEC
