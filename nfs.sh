#!/bin/bash

sudo mkdir /nfs_disk
sudo chmod go+w /nfs_disk

sudo apt-get install nfs-common
# Through internal IP
sudo mount 10.190.1.10:/nfs /nfs_disk

sudo chmod 646 /etc/fstab
sudo echo '# Through internal IP' >> /etc/fstab
sudo echo '10.190.1.10:/nfs /nfs_disk_1 nfs defaults,_netdev 0 0' >> /etc/fstab
sudo chmod 644 /etc/fstab