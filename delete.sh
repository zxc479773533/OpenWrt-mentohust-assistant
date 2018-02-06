#!/bin/sh 
        macaddr=$(uci get smarthust.input.macaddr)
        sed -i "/^${macaddr}/d" ~/code/auto-mentohust/data.txt

        uci set smarthust.input.macaddr="xx:xx:xx:xx:xx:xx"
        uci commit smarthust