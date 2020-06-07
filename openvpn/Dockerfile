FROM debian:stable-slim

MAINTAINER Rob Haswell <rob@haswell.co.uk>

RUN apt-get update 
RUN apt-get upgrade -y
RUN apt-get install -y \
    wget \
    unzip \
    network-manager-openvpn

ARG VPN_DIR=/etc/openvpn

WORKDIR ${VPN_DIR}

RUN wget https://www.ipvanish.com/software/configs/configs.zip && \
    unzip configs.zip

COPY openvpn.sh openvpn.sh

ENV REGION=''
ENV USERNAME=''
ENV PASSWORD=''

CMD sh openvpn.sh
