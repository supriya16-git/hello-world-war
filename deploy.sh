#!/bin/bash

cd src/main/webapp
vi index.jsp
cd ../../..
mvn package
cd target
sudo cp -r hello-world-war-1.0.0.war /opt/tomcat/apache-tomcat-10.1.34/webapps/
sudo su -
cd /opt/tomcat/apache-tomcat-10.1.34/bin
./shutdown.sh
./startup.sh
