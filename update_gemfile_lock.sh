#!/bin/sh

USAGE="Usage: $0 <your app name>"

if [ "$#" -eq 0 ]; then
	echo "$USAGE"
	exit 1
fi

cd "$1"
docker run -it -v $(pwd):/usr/src/app -w /usr/src/app "$1" bundle
