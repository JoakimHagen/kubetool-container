#!/bin/bash

apt-get update
apt-get install -y curl apt-transport-https gnupg2 ca-certificates lsb-release apt-utils

# add repositories for apt
# docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

# kubectl
curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list

# swagger
apt-get install gnupg ca-certificates
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 379CE192D401AB61
echo "deb https://dl.bintray.com/go-swagger/goswagger-debian ubuntu main" | tee /etc/apt/sources.list.d/goswagger.list

# azure cli
export DEBIAN_FRONTEND=noninteractive
curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/microsoft.asc.gpg
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $(lsb_release -cs) main" \
  > /etc/apt/sources.list.d/azure-cli.list

apt-get update