#!/bin/bash
log_file="/var/log/cpu_monitor.log"
threshold=75

cpu_usage=$(awk '{u=$2+$4; t=$2+$4+$5; if (NR>1) {print (u-prev_u)*100/(t-prev_t)}} {prev_u=u; prev_t=t}' <(grep 'cpu ' /proc/stat; sleep 1; grep 'cpu ' /proc/stat))

if (( $(echo "$cpu_usage > $threshold" | bc -l) )); then
    echo "$(date): CPU Usage $cpu_usage%" >> "$log_file"
fi
