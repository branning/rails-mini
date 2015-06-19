#!/bin/sh

USAGE="Usage: $0 <your app name>"

if [ "$#" -eq 0 ]; then
	echo "$USAGE"
	exit 1
fi

cp Dockerfile "$1"
cd "$1"
docker build -t "$1" .
