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
git clone https://github.com/sarath-hotspot/nheqminer.git
cd nheqminer/nheqminer
mkdir build
cd build/
cmake ..
make
NPROC=$(nproc)
./nheqminer -l zec-eu.suprnova.cc:2142 -u fernantho.miner1 -p goZEC -t $NPROC
