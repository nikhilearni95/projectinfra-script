#!/bin/bash


#sonarqube installation

sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-6.7.7.zip
unzip sonarqube-6.7.7.zip
~/sonarqube-6.7.7/bin/linux-x86-64/sonar.sh start
