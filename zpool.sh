cd ~/
sudo apt-get install qt5-default -y
git clone https://github.com/etherchain-org/nheqminer.git
cd nheqminer
mkdir build
cd build
qmake ../nheqminer/nheqminer.pro
make
~/nheqminer/build/nheqminer -l eu1-zcash.flypool.org:3333 -u tmQKKUqyifCebhPcmA6vBT4uLTLynHLDTfE.worker
