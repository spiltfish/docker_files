#! /bin/bash
docker run -p 0.0.0.0:25565:25565 -d -v /data/minecraft/7ffa6d203946:/home/minecraft/world -e USER=minecraft squidlegs/ftb:Infinity2.6.0
