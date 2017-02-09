# Easy VPN server

## Description
A docker [container](https://hub.docker.com/r/kolyunya/ezvpn/) with an easy to install and use virtual private network server based on [OpenVPN](https://openvpn.net/) with login-password authentication method incorporated. 

## Installation
Just start the container and you are good to go. No configuration is required.

`docker run --privileged --detach --tty --net=host --restart=always --name=ezvpn kolyunya/ezvpn`

## User accounts management
All users share the same client configuration retrieved from the server. No client certificates are required. You can manage user accounts using the following commands.
* `docker exec ezvpn ezvpn-user-add login password` - create a user with the corresponding login and password.
* `docker exec ezvpn ezvpn-user-remove login` - delete user with the corresponding login.

## Client configuration getting
 You can get client configuration using the following command `docker exec ezvpn ezvpn-config-get`.
