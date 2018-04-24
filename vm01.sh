#!/usr/bin/env bash
echo GATEWAY=10.0.42.20 > /etc/sysconfig/network
systemctl restart network
ip route del default via 10.0.2.2
