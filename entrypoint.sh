#!/bin/bash
set -e

if [ -d "/iptables.d" ]; then
  for file in /iptables.d/*; do
    iptables restore 
  done
fi

exec /usr/sbin/openvpn --config /etc/openvpn/openvpn.conf
