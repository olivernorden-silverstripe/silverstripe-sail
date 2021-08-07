#!/bin/bash
apt-get update \
  && apt-get install -y wget
mkdir -p /etc/ssl/ondocker.dev/
cd /etc/ssl/ondocker.dev/
wget -q https://certs.olivernorden.se/docker-certs.tgz
tar xzf docker-certs.tgz
rm -f docker-certs.tgz