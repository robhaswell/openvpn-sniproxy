#!/bin/sh
echo "$USERNAME" > auth.conf
echo "$PASSWORD" >> auth.conf

chmod 600 auth.conf

DEFAULT=`ip route | grep "^default" | awk -F'[ ]+' '{print $3}'`

/sbin/ip route add 192.168.0.0/16 via ${DEFAULT} dev eth0

openvpn \
    --config "${REGION}.ovpn" \
    --auth-user-pass auth.conf \
    --mute-replay-warnings
