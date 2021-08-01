#!/bin/bash
apt-get update \
  && apt-get install -y wget
mkdir -p /etc/ssl/docker.olivernorden.se/
cd /etc/ssl/docker.olivernorden.se/
wget -q https://certs.olivernorden.se/docker-certs.tgz
tar xzf docker-certs.tgz
rm -f docker-certs.tgz