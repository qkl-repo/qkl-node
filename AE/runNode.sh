#!/bin/bash
docker run --name ae-node \
 -p 3013:3013 -p 3015:3015 \
 -v /root/aeternity/aechain/mnesia/:/home/aeternity/node/data/mnesia/  \
 -d aeternity/aeternity
 
