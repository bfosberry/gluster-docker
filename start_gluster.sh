#!/bin/bash
set -x
set -e
SCALE="${1:-3}"
docker-compose up -d
docker-compose scale gluster=$SCALE
sleep 2
for i in $(seq 2 $SCALE); do 
  NODE_ID=`docker ps -q -f name=gluster_gluster_$i`
  docker exec gluster_gluster_1 gluster peer probe $NODE_ID
done
