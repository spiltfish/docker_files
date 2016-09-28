#!/bin/bash

#FUNCTIONS

function usage() {
    echo "Usage: ./build.sh [build|publish] <server zip url> <server tag>"
    exit 1
}

function build() {
  if [ ! $# -eq 2 ]
     then
        exit 1
  fi

  ./scripts/generate_docker_file.sh $1 $2
  ./scripts/generate_run_command.sh $2
  
  docker build -t squidlegs/ftb:$2 $2
}

function publish() {
  if [ ! $# -eq 1 ]
     then
        exit 1
  fi

  docker push squidlegs/ftb:$2

}



#START SCRIPT

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
     build $SERVER_URL $SERVER_TAG
     exit 0
fi

if [ "$OP" == "publish" ]
   then
      echo "publishing"
      publish $SERVER_TAG
      exit 0
fi

if [ "$OP" == "buildandpublish" ]
    then
        echo "Building and Publishing"
        build $SERVER_URL $SERVER_TAG
        publish $SERVER_TAG
        exit 0
fi


usage
