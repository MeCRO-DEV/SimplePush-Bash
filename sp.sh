#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Error: SIMPLEPUSH_KEY and message must be provided."
    echo "Usage: $0 SIMPLEPUSH_KEY message [title] [event]"
    exit 1
fi

SIMPLEPUSH_KEY=$1
MSG=$2
TITLE=$3
EVENT=$4

curl --silent --output /dev/null --data "key=$1&title=$2&msg=$3&event=$4" https://api.simplepush.io/send -k