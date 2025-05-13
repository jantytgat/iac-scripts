#!/bin/sh
echo "### configure netscaler blx"
echo "### --> configure variables"

TEMPLATE_PATH=$(echo $0 | sed 's/\(.*\)\/configure.sh/\1/')

if [ "$0" = $TEMPLATE_PATH]
then
        TEMPLATE_PATH="."
fi

BLX_WORKER_PROCESSES=$1
BLX_IP=$2
BLX_LICENSE_SERVER=$3
BLX_LICENSE_BANDWIDTH=$4
BLX_LICENSE_UNIT=$5
BLX_LICENSE_EDITION=$6

BLX_AUTO_ENABLE=$7
BLX_AUTO_START=$8

HOST_IP="$(ip addr | grep "inet.*eth0" | sed 's/^.*inet\s\([0-9.\/]*\)\s.*eth0$/\1/')"
HOST_GW="$(ip route | grep default | sed 's/^default via\s\([0-9.]*\)\s.*$/\1/')"
HOST_DNS_NAMESERVER="$(/usr/bin/resolvectl status | grep "DNS Servers: " | sed -e 's/.*DNS Servers: //')"

echo "### --> configure systemd post-blx-start.service"
mkdir -p /root/.post-blx-start
echo "HOST_DNS_NAMESERVER=${HOST_DNS_NAMESERVER}" >> /root/.post-blx-start/environ
cp $TEMPLATE_PATH/templates/post-blx-start.service /usr/lib/systemd/system/.
systemctl enable post-blx-start.service

cat > /etc/blx/blx.conf<<EOF
blx-system-config
{
        worker-processes: $BLX_WORKER_PROCESSES
        ipaddress: $BLX_IP
        blx-managed-host: 1
        host-ipaddress: $HOST_IP

}

static-routes
{
        default $HOST_GW
}

cli-cmds
{
        add ns licenseserver $BLX_LICENSE_SERVER
        set ns capacity -bandwidth $BLX_LICENSE_BANDWIDTH -unit $BLX_LICENSE_UNIT -edition $BLX_LICENSE_EDITION
}
EOF

echo "### --> enable and start netscaler blx"
if $BLX_AUTO_ENABLE 
then
    systemctl enable blx.service
    if $BLX_AUTO_START
    then
        systemctl start blx.service
    fi
fi