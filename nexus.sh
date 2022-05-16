#!/bin/bash

# Nexus installation

wget https://sonatype-download.global.ssl.fastly.net/repository/downloads-prod-group/3/nexus-3.29.2-02-unix.tar.gz
tar xvf nexus-3.29.2-02-unix.tar.gz
~/nexus-3.29.2-02/bin/nexus start

