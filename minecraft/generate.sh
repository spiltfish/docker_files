#!/bin/bash
if [ ! $# -eq 2 ]
   then
    echo "Usage: ./generate.sh <server zip url> <server tag>"
    exit 1
fi

./generate_docker_file.sh $1 $2
./generate_run_command.sh $2

