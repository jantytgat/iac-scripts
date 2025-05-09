#!/bin/sh
echo "### configure apt"
echo "### --> install apt-utils"
DEBIAN_FRONTEND="noninteractive" apt-get install -q -y apt-utils
echo "### --> install apt-transport-https"
DEBIAN_FRONTEND="noninteractive" apt-get install -q -y apt-transport-https
echo "### --> DONE <--"
