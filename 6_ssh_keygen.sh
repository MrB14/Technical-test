#!/bin/bash
key_directory=$1

mkdir -p "$key_directory"
ssh-keygen -t rsa -b 2048 -f "$key_directory/id_rsa" -N ""
