#! /bin/bash
mkdir venv github
sudo apt-get update
yes | sudo apt-get install python3.9
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa
yes | sudo apt install python3.10
pip3 install virtualenv
sudo fallocate -l 200G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
sudo sysctl vm.swappiness=10
echo '' >> /etc/sysctl.conf
echo 'vm.swappiness=10' >> /etc/sysctl.conf