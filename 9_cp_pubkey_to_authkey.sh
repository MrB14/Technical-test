#!/bin/bash
pub_key=$1
user=$2

cat "$pub_key" >> "/home/$user/.ssh/authorized_keys"
