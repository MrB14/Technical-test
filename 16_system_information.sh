#!/bin/bash
echo "Hostname: $(hostname)"
echo "Date: $(date)"
echo "Logged-in Users: $(who | wc -l)"
