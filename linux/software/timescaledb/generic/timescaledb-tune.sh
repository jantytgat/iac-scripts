#!/bin/sh
echo "########################################################################"
echo "LINUX - SOFTWARE - TimeScaleDB - Generic - Tune"
echo "########################################################################"
echo "#                                                                      #"
echo "#                                                                      #"

echo "### Tune TimeScaleDB for PostgreSQL"
timescaledb-tune --quiet --yes
service postgresql restart

echo "#                                                                      #"
echo "########################################################################"
echo " "