#!/bin/bash
threshold=80
email=$1

disk_usage=$(df --output=pcent / | tail -1 | tr -d '%')

if [ "$disk_usage" -gt "$threshold" ]; then
    echo "Disk usage exceeds $threshold%." | mail -s "Disk Usage Alert" "$email"
fi

