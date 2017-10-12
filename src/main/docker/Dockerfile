FROM java:8-jdk
RUN mkdir /app
WORKDIR /app

ENV APPNAME=demo

RUN ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo Asia/Shanghai > /etc/timezone

#COPY target/${APPNAME}.jar /app/
COPY ${APPNAME}.jar /app/

#ENTRYPOINT ["sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar /app/${APPNAME}.jar --spring.config.location=${CONFIG} --spring.profiles.active=${PROFILES}"]
ENTRYPOINT ["sh", "-c", "java -jar ${APPNAME}.jar"]

EXPOSE 8080
