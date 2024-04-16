#!/bin/bash

# ufw_setup.sh
shellcheck provisioning/common/common_setup.sh

sudo apt-get remove ufw iptables-persistent
sudo apt-get install -y ufw iptables-persistent netfilter-persistent --reinstall
