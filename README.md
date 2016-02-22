# EZVPN - Easy VPN

## Description
A docker [container](https://hub.docker.com/r/kolyunya/ezvpn/) with an easy to install and use virtual private network server based on [OpenVPN](https://openvpn.net/) with login-password authentication method incorporated. 

## Installation
1. Start the container:
`docker run --privileged --detach --tty --net=host --restart=always --name=ezvpn kolyunya/ezvpn`

2. Create user account
`docker exec ezvpn ezvpn-user-add login password`

3. Get client config:
`docker exec ezvpn ezvpn-config-get`

4. Give the server a couple of minutes to generate Diffie-Hellman key.

## Usage
All users share the same config retrieved from the server. No client certificates are required.
