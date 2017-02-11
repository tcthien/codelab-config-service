#!/bin/bash

docker run -d -p 20088:20088 --name=codelab-config --env-file=./env codelab-config
