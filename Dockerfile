FROM debian:8.2
USER root
EXPOSE 1194/udp
COPY scripts/* /usr/bin/
COPY configs/* /etc/openvpn/
COPY configs/auth /etc/openvpn/auth
COPY configs/cert /etc/openvpn/cert
COPY configs/pswd /etc/openvpn/pswd
COPY configs/temp /etc/openvpn/temp
RUN ezvpn-install
ENTRYPOINT ezvpn-start
