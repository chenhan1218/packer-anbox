#!/bin/bash -eux

echo "==> Installing anbox"
apt-get install -y snapd # upgrade snapd
add-apt-repository -y ppa:morphis/anbox-support
apt update
apt install anbox-modules-dkms
modprobe ashmem_linux
modprobe binder_linux
sudo /usr/bin/snap install --devmode --beta anbox
apt-get install -y adb
