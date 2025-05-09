#!/bin/sh
echo "########################################################################"
echo "LINUX - SOFTWARE - TimeScaleDB - Ubuntu - Install for PostgreSQL 12.x"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"

echo "### Install TimeScaleDB for PostgreSQL 12.x"
DEBIAN_FRONTEND="noninteractive" apt-get install -y timescaledb-2-postgresql-12

echo "#                                                                      #"
echo "########################################################################"
echo " "