#!/usr/bin/env bash

if [[ -n $@ ]]
then
    coproc ( vpn "$@" & > /dev/null 2>&1 )
    notify-no-icon "" "$@" & > /dev/null 2>&1
    exit
fi

list=$(for f in /etc/openvpn/*.conf; do
    if [ $f != *hy-login* ]; then
        echo ${f##/*/} | cut -d "." -f 1
    fi
done)
echo "$list"
