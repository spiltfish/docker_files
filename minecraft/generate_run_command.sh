#!/bin/sh

if [ ! $# -eq 1 ]; then
    echo "Usage: ./generate_run_command.sh <server tag>"
    exit 1
fi

#Parameter Definition
SERVER_TAG=$1

if [ ! -d "$SERVER_TAG" ]; then
    mkdir $SERVER_TAG
fi

touch $SERVER_TAG/docker_run.sh

sed -e 's/$SERVER_TAG/'$SERVER_TAG'/g' docker_run.sh.tmpl > $SERVER_TAG/docker_run.sh
