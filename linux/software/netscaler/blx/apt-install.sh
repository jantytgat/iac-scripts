#!/bin/sh
echo "### install netscaler blx"
echo "### --> set variables"
BLX_BASE_URL=$1
BLX_VERSION=$2
BLX_BUILD=$3

echo "### --> add i386 architecture"
dpkg --add-architecture i386
apt-get -q update

echo "### --> install dependencies"
DEBIAN_FRONTEND="noninteractive" apt-get install -q -y libc6:i386

echo "### --> download netscaler blx installer files"
mkdir /var/blx_install
curl --output-dir /var/blx_install -O "${BLX_BASE_URL}/${BLX_VERSION}/${BLX_BUILD}/blx-deb-${BLX_VERSION}-${BLX_BUILD}.tar.gz"

echo "### --> install netscaler blx"
tar zxvf /var/blx_install/*tar.gz -C /var/blx_install
DEBIAN_FRONTEND="noninteractive" apt-get install -q -y /var/blx_install/blx-deb-${BLX_VERSION}-${BLX_BUILD}/*.deb

echo "### --> disable systemd service blx.service"
systemctl disable blx.service