#!/usr/bin/env bash 

mvn -DskipTests=true clean package spring-boot:build-image
docker run -p 8080:8080 docker.io/library/demo:0.0.1-SNAPSHOT       