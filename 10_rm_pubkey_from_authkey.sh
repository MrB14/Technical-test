#!/bin/bash
key_string=$1
user=$2

sed -i "/$key_string/d" "/home/$user/.ssh/authorized_keys"