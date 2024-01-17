#!/bin/bash

#Replace BashRC
cp -f .bashrc ~
sudo cp -f .bashrc /root/.bashrc

#Deac. Login MOTD
touch ~/.hushlogin
sudo touch /root/.hushlogin

#Setup Custom MOTD
sudo apt update && sudo apt install neofetch -y
sudo cp motd.sh /etc/profile.d/motd.sh 
sudo chmod +x /etc/profile.d/motd.sh

