#!/bin/bash

# DELETE GO
sudo apt-get purge golang*
sudo rm -rf /usr/local/go
sudo rm -rf $(echo $GOPATH)

source ~/.profile
source ~/.bashrc

# APT-GET Update & Upgrade
sudo apt-get -y update
sudo apt-get -y upgrade

# Install Wget
sudo apt-get install wget

# Bring the Go tar file
sudo wget https://golang.org/dl/go1.21.10.linux-amd64.tar.gz
sudo tar -C /usr/local -xvf go1.21.10.linux-amd64.tar.gz

# Set Go PATH
mkdir ~/go
echo "export GOROOT=/usr/local/go" >> ~/.profile
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
echo "export GOPATH=~/go" >> ~/.profile
echo "export GOBIN=/usr/local/go/bin" >> ~/.profile
source ~/.profile

# CHECK GO PATH
echo $GOPATH

# CHECK GO VERSION
go version
