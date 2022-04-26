#!/bin/bash

#jenkins&wget installation


sudo apt-get update
sudo apt-get install -y openjdk-8-jdk
sudo apt install -y wget
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install -y jenkins
sudo systemctl start jenkins

#maven unzip installation

sudo apt install -y maven unzip

#sonarqube installation

sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-6.7.7.zip
unzip sonarqube-6.7.7.zip
~/sonarqube-6.7.7/bin/linux-x86-64/sonar.sh start

# Nexus installation

wget https://sonatype-download.global.ssl.fastly.net/repository/downloads-prod-group/3/nexus-3.29.2-02-unix.tar.gz
tar xvf nexus-3.29.2-02-unix.tar.gz
~/nexus-3.29.2-02/bin/nexus start

# Tomcat installtion

wget https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.94/bin/apache-tomcat-7.0.94.tar.gz
tar xvf apache-tomcat-7.0.94.tar.gz

