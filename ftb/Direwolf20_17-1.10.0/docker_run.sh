#! /bin/bash

SERVER_NAME=$1

docker run -p 0.0.0.0:25565:25565 -d -v /data/minecraft/$SERVER_NAME:/home/minecraft/world -e USER=minecraft squidlegs/ftb:Direwolf20_17-1.10.0
