#!/bin/bash

docker stop react-app || true
docker rm react-app || true

docker run -d -p 80:80 --name react-app seran2304/dev:latest
