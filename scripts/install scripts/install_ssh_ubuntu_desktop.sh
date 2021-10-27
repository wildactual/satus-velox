#! /bin bash
sudo apt install openssh-server -yqq
sudo systemctl start ssh
sudo systemctl enable ssh