#!/bin/sh

#docker run -p 3306:3306 --name demo-mysql -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=demo -e MYSQL_USER=demo_user -e MYSQL_PASSWORD=demo_pass -d mysql:5.6
#docker run -d -p 3306:3306 --name mysql \
#-v $PWD/conf/my.cnf:/etc/mysql/my.cnf \
#-v $PWD/logs:/logs \
#-v $PWD/data:/mysql_data \
#-e MYSQL_ROOT_PASSWORD=123456 \
#mysql:5.6


docker run -d --link demo-mysql:mysql --name spring-boot-docker-mysql -p 8080:8080 dave/spring-boot-docker-mysql:1.0.0
