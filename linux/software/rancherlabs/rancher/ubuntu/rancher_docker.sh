#!/bin/sh
echo "########################################################################"
echo "# RANCHER LABS - RANCHER IN DOCKER                                     #"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"


apt-get remove -y docker docker-engine docker.io containerd runc

sh ../../../docker/general/ubuntu/repository.sh

DEBIAN_FRONTEND="noninteractive" apt-get install -y docker-ce docker-ce-cli containerd.io
docker run hello-world
docker run -d --restart=unless-stopped -p 80:80 -p 443:443 --privileged rancher/rancher

echo "#                                                                      #"
echo "#                                                                      #"
echo "########################################################################"
echo " "
echo " "
echo " "
echo " "

