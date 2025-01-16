#!/bin/bash
user=$1
host=$2

ssh -q "$user@$host" exit
if [ $? -eq 0 ]; then
    echo "Koneksi berhasil."
else
    echo "Koneksi gagal."
fi
