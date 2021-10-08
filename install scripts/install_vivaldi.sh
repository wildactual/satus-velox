#! /bin/bash
# from: https://help.vivaldi.com/desktop/install-update/manual-setup-vivaldi-linux-repositories/
#wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -
#sudo add-apt-repository 'deb https://repo.vivaldi.com/archive/deb/ stable main'
#sudo apt update && sudo apt install vivaldi-stable
#
# apt-key is depreciated using the gpg method
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | gpg --dearmor > packages.vivaldi.gpg
sudo install -o root -g root -m 644 packages.vivaldi.gpg /etc/apt/trusted.gpg.d
sudo sh -c 'echo "deb [arch=amd64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.vivaldi.gpg] https://repo.vivaldi.com/archive/deb stable main" > /etc/apt/sources.list.d/vivaldi.list' 
rm -f packages.vivaldi.gpg
sudo apt update && sudo apt install vivaldi-stable -yqq