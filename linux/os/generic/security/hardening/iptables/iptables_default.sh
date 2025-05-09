#!/bin/sh
echo "### configure iptables"
INTERFACE_LOCAL=lo
INTERFACE_HOST=$1


iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT

iptables -F

# Allow traffic on localhost
iptables -A INPUT -i $INTERFACE_LOCAL -j ACCEPT
iptables -A OUTPUT -o $INTERFACE_LOCAL -j ACCEPT

# Always allow inbound traffic to SSH server
iptables -A INPUT -p tcp -m tcp --dport 22 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 22 -m state --state ESTABLISHED -j ACCEPT

# Always allow locally originated traffic
iptables -I OUTPUT -o $INTERFACE_HOST -d 0.0.0.0/0 -j ACCEPT
iptables -I INPUT -i $INTERFACE_HOST -m state --state ESTABLISHED,RELATED -j ACCEPT

iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP