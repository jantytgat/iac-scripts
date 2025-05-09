#!/bin/sh
echo "### install docker engine"
DEBIAN_FRONTEND="noninteractive" apt-get install -y docker-ce docker-ce-cli containerd.io
