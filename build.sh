#!/bin/sh
#https://github.com/jiwhiz/spring-boot-docker-mysql

sh docker-build.sh

docker rm -vf `docker ps -a|grep spring-boot-docker-mysql$|awk '{print $1}'` > /dev/null 2>&1

sh docker-create.sh

echo "curl http://`docker-machine.exe ip`:8080/"
curl http://`docker-machine.exe ip`:8080/
