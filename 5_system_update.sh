#!/bin/bash
log_file="/var/log/system_update.log"
if [ -x "$(command -v apt)" ]; then
    sudo apt-get update && sudo apt-get upgrade -y > "$log_file"
elif [ -x "$(command -v yum)" ]; then
    sudo yum update -y > "$log_file"
else
    echo "Package manager tidak dikenal!"
fi
