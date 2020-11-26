#!/bin/sh


# mount -t devtmpfs devtmpfs /dev
# causes open /dev/ptmx error


cd /data

if ! test -f /data/dropbear_rsa_host_key
then
    dropbearkey -t rsa -f /data/dropbear_rsa_host_key
fi

if ! test -d /data/stack
then
    mkdir -p /data/stack
fi

screen -wipe
screen -dmS dropbear dropbear -r /data/dropbear_rsa_host_key -E -F 


exec tail -f /dev/null





