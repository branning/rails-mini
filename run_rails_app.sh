#!/bin/sh

USAGE="Usage: $0 <your app name>"

if [ "$#" -eq 0 ]; then
	echo "$USAGE"
	exit 1
fi

cd "$1"
docker run --name "$1"-container -p 3000:3000 -v $(pwd):/usr/src/app -w /usr/src/app -d "$1" rails server -p 3000 -b 0.0.0.0
