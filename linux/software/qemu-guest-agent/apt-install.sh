#!/bin/sh
echo "### install qemu-guest-agent"
DEBIAN_FRONTEND="noninteractive" apt-get install -y qemu-guest-agent
