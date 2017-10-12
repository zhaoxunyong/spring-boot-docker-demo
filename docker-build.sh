#!/bin/sh

#mvn clean package
#docker build -t "dave/spring-boot-docker-mysql" -f src/main/docker/Dockerfile .

mvn clean package docker:build
