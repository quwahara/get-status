#!/bin/bash

# This software is released under the MIT License, see LICENSE

INTERVAL=2s

if [ $# != 2 ]; then
    echo "Usage:"
    echo "get-status.sh <PREFIX> <LIST>"
    exit 1
fi

PREFIX=$1
LIST=$2

if [ ! -e $LIST ];then
    echo "LIST File not exists."
    exit 1
fi

function get_status() {
    URL=${PREFIX}${1}
    STATUS=$(curl -LI $URL -o /dev/null -w '%{http_code}\n' -s )
    echo -e "${URL}\t${STATUS}"
}

while read F; do
    # Remove CR
    F1=$(echo "$F" | tr -d '\r')
    get_status $F1

    sleep $INTERVAL
done <"$LIST"
