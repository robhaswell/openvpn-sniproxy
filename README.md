# openvpn-sniproxy
A set of Docker containers to create an SNI Proxy for accessing specific websites over a VPN.

**Note:** This fetches an OpenVPN config for *IP Vanish* but can be changed to suit any IP provider.

## Usage

1. Create a `.env` file or otherwise set up the following environment variables:
  * `REGION`
  * `USERNAME`
  * `PASSWORD`
2. `docker-compose up -d --build`
3. Configure your local DNS forwarder to hand out the IP address of your host on the network for sites which you need to proxy.

## Inspiration

Thank you to the following authors and their repositories:

* https://github.com/brettmcginnis/docker_ipvanish for basic OpenVPN container
* https://github.com/msh100 for figuring out the network config
