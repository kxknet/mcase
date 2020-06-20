#!/bin/bash
export VESTA=/usr/local/vesta/
file="/home/centos/ip.txt"
for var in $(cat $file)
do
/usr/local/vesta/bin/v-add-sys-ip $var 255.255.255.255 eth0
done
service nginx stop
chkconfig nginx off

