#!/bin/bash

# reboot_commands.sh
systemctl restart snapd.service || true
sudo service vsftpd restart
sudo ufw reload
sudo reboot
