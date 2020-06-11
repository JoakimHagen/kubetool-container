#!/bin/bash

# clear package cache
apt-get clean

# download binaries to cache
apt-get install -y --download-only kubectl swagger azure-cli

# copy to working directory
cp -r /var/cache/apt/archives .
chmod 666 ./archives/lock
chmod 666 ./archives/partial