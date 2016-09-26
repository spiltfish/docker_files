#!/bin/bash


function usage(){
    echo "Usage: ./build.sh [build|publish] <server zip url> <server tag>"
    exit 1
}

if [ ! $# -eq 3 ]
   then
      usage
fi

#Parameter Definition
OP=$1
SERVER_URL=$2
SERVER_TAG=$3

if [ "$OP" == "build" ]
   then
     echo "building"

     exit 0
fi

if [ "$OP" == "publish" ]
   then
      echo "publishing"

      exit 0
fi

usage
