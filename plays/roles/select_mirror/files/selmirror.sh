#!/bin/bash

MIRROR_LIST=https://launchpad.net/ubuntu/+archivemirrors
ARCH=$1
DIST=$2
REPO=$3
COUNTRY=$4

if [ "$ARCH" = "aarch64" ]
then
  ARCH=arm64
fi

mirrorList=()

for url in $(curl -s $MIRROR_LIST | grep -Po 'http://.*(?=">http</a>)' | grep \.$COUNTRY\/); do
  mirrorList+=( "$url" )
done

for url in "${mirrorList[@]}"; do
  (
    if curl --connect-timeout 1 -m 1 -s --head "$url/dists/$DIST/$REPO/binary-$ARCH/" | head -n 1 | grep -q "HTTP/1.[01] [23]..";
    then
        host=`echo "$url" | awk -F/ '{print $3}'`
        latency=`ping -c 4 "$host" | tail -1 | awk '{print $4}' | cut -d '/' -f 2 | awk -F \. '{ print $1 }'`
        if [ -n "$latency" ]
        then
           echo $latency FOUND $url
        fi
    fi

  ) &
done

wait
