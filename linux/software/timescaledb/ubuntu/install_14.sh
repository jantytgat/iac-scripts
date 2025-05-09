#!/bin/sh
echo "########################################################################"
echo "LINUX - SOFTWARE - TimeScaleDB - Ubuntu - Install for PostgreSQL 14.x"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"

echo "### Install TimeScaleDB for PostgreSQL 14.x"
DEBIAN_FRONTEND="noninteractive" apt-get install -y timescaledb-2-postgresql-14

echo "#                                                                      #"
echo "########################################################################"
echo " "