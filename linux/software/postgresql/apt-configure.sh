#!/bin/sh
echo "### configure repository for postgresql"

echo "### --> install dependencies"
DEBIAN_FRONTEND="noninteractive" apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

echo "### --> add repository key"
install -d /usr/share/postgresql-common/pgdg
curl -o /usr/share/postgresql-common/pgdg/apt.postgresql.org.asc --fail https://www.postgresql.org/media/keys/ACCC4CF8.asc

echo "### --> add repository to /etc/apt/sources.list.d/postgresql.list"
echo "deb [signed-by=/usr/share/postgresql-common/pgdg/apt.postgresql.org.asc] https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" | tee /etc/apt/sources.list.d/postgresql.list

echo "### --> update package list"
apt-get update

echo "### --> DONE <--"