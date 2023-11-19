FROM debian:stable-slim

MAINTAINER Rob Haswell <rob@haswell.co.uk>

RUN apt-get update 
RUN apt-get upgrade -y
RUN apt-get install -y \
    wget \
    unzip \
    iproute2 \
    network-manager-openvpn

ARG VPN_DIR=/etc/openvpn
COPY configs ${VPN_DIR}/

WORKDIR ${VPN_DIR}

COPY openvpn.sh openvpn.sh

ENV REGION=''
ENV USERNAME=''
ENV PASSWORD=''

CMD sh openvpn.sh
