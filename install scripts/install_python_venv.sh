#! /bin/bash
# setup python environment for named environment test
sudo apt update && sudo apt upgrade -y
sudo apt install -y python3-pip build-essential libssl-dev libffi-dev python3-dev python3-venv
python3 -m venv test
source test/bin/activate

# quit virutal environment with deactivate