#!/bin/bash
action=$1
service=$2

sudo systemctl $action $service
