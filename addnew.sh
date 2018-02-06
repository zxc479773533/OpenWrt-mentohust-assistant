#!/bin/sh 

        macaddr=`uci get smarthust.input.macaddr`
        username=`uci get smarthust.input.username`
        password=`uci get smarthust.input.password`
        
        uci set smarthust.input.macaddr="xx:xx:xx:xx:xx:xx"
        uci set smarthust.input.password="********"
        uci set smarthust.input.username="username"
        uci commit smarthust

        echo "${macaddr},${username},${password}" >> /usr/smarthust/data.txt

