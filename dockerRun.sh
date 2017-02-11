#!/bin/bash

docker ps --no-trunc | grep ${1} | awk '{print $1}' | xargs docker stop  

docker run -d -p 20088:20088 --name=${1} --env-file=./env ${1}
