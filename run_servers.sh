#!/bin/bash
if hash docker-compose 2>/dev/null; then
    echo "using docker-compose"
    docker-compose up 
else
    echo "using bundle in local system"
    sh up_local_bundle.sh
fi
