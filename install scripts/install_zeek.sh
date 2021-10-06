#! /bin/bash
# from: https://docs.zeek.org/en/master/install.html
sudo apt update
sudo apt-get install cmake make gcc g++ flex bison libpcap-dev libssl-dev python3 python3-dev swig zlib1g-dev
git clone --recursive https://github.com/zeek/zeek
cd zeek
./configure
make
sudo make install
sudo ln --symbolic /usr/local/zeek/bin/zeek /usr/bin/zeek
# for zkg
sudo apt install python3-pip
sudo pip3 install GitPython semantic-version
sudo ln --symbolic /usr/local/zeek/bin/zkg /usr/bin/zkg

#run zeek and read test.pcap
zeek /usr/local/zeek/share/zeek/site/local.zeek -r test.pcap