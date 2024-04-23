#!/bin/bash

# common_commands.sh
shellcheck provisioning/common/common_setup.sh

sudo apt-get --fix-broken install
sudo apt-get install -y dist-upgrade ubuntu-pro-client
