#!/bin/bash

# Initialize arguments
[ -f "$1" ] || exit 1
mapfile -t args < "$1"

# Initialize login
login="${args[0]}"
[ "${login}" != "" ] || exit 1

# Initialize password
password="${args[1]}"
[ "${password}" != "" ] || exit 1

# Retrieve correct password
file="/etc/openvpn/pswd/${login}"
[ -f "${file}" ] || exit 1
correct_password="$(<${file})"
[ "${correct_password}" != "" ] || exit 1

# Validate password
[ "${correct_password}" = "${password}" ] || exit 1

# Authentication succeeded
exit 0
