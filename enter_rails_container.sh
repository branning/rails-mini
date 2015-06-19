#!/bin/sh

USAGE="Usage: $0 <your app name>"

if [ "$#" -eq 0 ]; then
	echo "$USAGE"
	exit 1
fi

docker exec -it "$1"-container /bin/bash
