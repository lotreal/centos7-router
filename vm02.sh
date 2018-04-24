#!/usr/bin/env bash
sysctl -w net.ipv4.ip_forward=1

iptables -t nat -N F42
iptables -t nat -A F42 -m state --state NEW -j LOG --log-prefix "F42 " --log-tcp-sequence --log-tcp-options --log-ip-options
iptables -t nat -A F42 -j MASQUERADE

iptables -t nat -A POSTROUTING ! -d 10.0.42.0/24 -o eth0 -j F42
