#! /bin/bash
cp .bashrc ~/.bashrc
conda config --set auto_activate_base false
sudo apt-get update
yes | sudo apt-get install python3.9
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa
yes | sudo apt install python3.10
sudo apt-get install python3-pip
pip3 install virtualenv
# sudo fallocate -l 200G /swapfile
# sudo chmod 600 /swapfile
# sudo mkswap /swapfile
# sudo swapon /swapfile
# sudo cp /etc/fstab /etc/fstab.bak
# echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
# sudo sysctl vm.swappiness=10
# sudo chmod 646 /etc/sysctl.conf
# sudo echo '' >> /etc/sysctl.conf
# sudo echo 'vm.swappiness=10' >> /etc/sysctl.conf
# sudo chmod 644 /etc/sysctl.conf
# bash nfs.sh
