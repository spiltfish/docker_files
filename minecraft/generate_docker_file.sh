#!/bin/sh

if [ ! $# -eq 2 ]
   then
    echo "Usage: ./generate_docker_file.sh <server zip url> <server tag>"
    exit 1
fi

#Parameter Definition
SERVER_ZIP_URL=$1
SERVER_TAG=$2

if [ ! -d "$SERVER_TAG" ]; then
    mkdir $SERVER_TAG
fi

echo 'Createing Dockerfile for server '$SERVER_ZIP_URL

sed -e 's|$SERVER_ZIP_URL|'$SERVER_ZIP_URL'|g' FTB_Dockerfile.tmpl > $SERVER_TAG/Dockerfile

