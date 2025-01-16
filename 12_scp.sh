#!/bin/bash
src=$1
user=$2
host=$3

scp "$src" "$user@$host:~/"
