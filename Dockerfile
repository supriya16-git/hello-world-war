FROM maven:3.8.3-openjdk-17 as builder

ARG MYPATH=/home/test

WORKDIR ${MYPATH}

COPY . .

RUN mvn clean package

RUN ls target/


FROM tomcat:jre8-temurin-focal as deploy
ARG MYPATH=/home/test

COPY --from=builder ${MYPATH}/target/*.war /usr/local/tomcat/webapps

