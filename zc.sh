sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install build-essential pkg-config libgtest-dev libc6-dev m4 autoconf libtool nano htop lm-sensors ncurses-dev unzip git python zlib1g-dev wget bsdmainutils automake aptitude -y
sudo aptitude install g++ g++-multilib -y
git clone https://github.com/zcash/zcash.git
cd zcash/
git checkout v1.0.0
./zcutil/fetch-params.sh
echo "now compilation will start"
./zcutil/build.sh -j$(nproc)
#echo "now testing will start"
#./qa/zcash/full-test-suite.sh
#./qa/pull-tester/rpc-tests.sh
echo "now solo mining will start"
mkdir -p ~/.zcash
echo "addnode=mainnet.z.cash" >> ~/.zcash/zcash.conf
echo "rpcuser=user" >> ~/.zcash/zcash.conf
echo "rpcpassword=`head -c 32 /dev/urandom | base64`" >>~/.zcash/zcash.conf
echo "gen=1" >> ~/.zcash/zcash.conf
echo "genproclimit=6" >> ~/.zcash/zcash.conf
echo "equihashsolver=tromp" >> ~/.zcash/zcash.conf

~/zcash/./src/zcashd
