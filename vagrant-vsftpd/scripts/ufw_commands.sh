#!/bin/bash

# ufw_commands.sh
shellcheck provisioning/common/ufw_setup.sh

sudo ufw default deny incoming
sudo ufw route allow proto tcp from any to any port 21 to 192.168.50.2 port 21
sudo ufw --force enable
sudo ufw allow 21/tcp
sudo iptables-save | sudo tee /etc/iptables/rules.v4 >/dev/null

# Llamada al script de reinicio
reboot_commands.sh
