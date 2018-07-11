#!/bin/sh
set -e

for volume in $(echo $DIND_SHARED_VOLUMES | sed "s/,/ /g")
do
    chmod a+rw $volume
done

exec /usr/local/bin/dockerd-entrypoint.sh "$@"
