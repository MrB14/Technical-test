#!/bin/bash
pub_key=$1
user=$2
host=$3

ssh-copy-id -i "$pub_key" "$user@$host"
