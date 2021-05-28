# syntax=docker/dockerfile:1
FROM openjdk:16-alpine3.13
WORKDIR /app
COPY target/time*.jar time.jar
RUN java -jar time.jar
