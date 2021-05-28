# syntax=docker/dockerfile:1
FROM openjdk:16-alpine3.13
WORKDIR /app
COPY target/time*.jar time.jar
CMD java -jar time.jar
