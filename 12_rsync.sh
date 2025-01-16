#!/bin/bash
src=$1
user=$2
host=$3

rsync -avz "$src" "$user@$host:~/"
