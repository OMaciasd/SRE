#!/bin/bash

# vsftpd_commands.sh
shellcheck provisioning/common/vsftpd_setup.sh

source "$(dirname "$0")/utilities.sh"

# Llamada al script de reinicio
reboot_commands.sh
