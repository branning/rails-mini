#!/bin/sh

# comment by @mazzolino https://registry.hub.docker.com/_/rails/
# switch to pinned

USAGE="Usage: $0 <your app name>"
TAG="4.2"

if [ "$#" -eq 0 ]; then
	echo "$USAGE"
	exit 1
fi

docker run -it -v $(pwd):/usr/src/app -w /usr/src/app rails:"$TAG" rails new "$1"
