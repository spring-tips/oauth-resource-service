#!/usr/bin/env bash 

docker run -e SPRING_PROFILES_ACTIVE=cloud -p 8080:8080 docker.io/library/demo:0.0.1-SNAPSHOT       