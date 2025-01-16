#!/bin/bash
source_dir=$1
backup_dest=$2

if [ -d "$source_dir" ]; then
    tar -czf "$backup_dest/backup_$(date +%Y%m%d).tar.gz" -C "$source_dir" .
else
    echo "Direktori tidak ditemukan!"
fi
