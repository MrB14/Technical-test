#!/bin/bash
directory=$1
extension=$2

if [ -d "$directory" ]; then
    find "$directory" -type f -name "*.$extension"
else
    echo "Direktori tidak ditemukan!"
fi
