#!/bin/bash
echo "########################################################################"
echo "LINUX - SOFTWARE - ELASTIC - ELASTICSEARCH - UBUNTU - Bootstrap Cluster"
echo "########################################################################"

datapath=$1

service elasticsearch stop
rm -rf $datapath/*
service elasticsearch start

echo "########################################################################"
echo " "