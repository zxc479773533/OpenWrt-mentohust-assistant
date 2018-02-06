#!/bin/sh 
        mac_addr=`uci get smarthust.input.macaddr`
        sed -i "/^${mac_addr}/d" /usr/smarthust/data.txt