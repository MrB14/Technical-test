#!/bin/bash
directory=$1

if [ -d "$directory" ]; then
    printf "File\tLines\tWords\tCharacters\n"
    for file in "$directory"/*.txt; do
        [ -e "$file" ] || continue
        stats=$(wc "$file")
        echo "$file $stats"
    done
else
    echo "Direktori tidak ditemukan!"
fi
