#!/bin/sh 

macaddr=`uci get usermanage.input.macaddr`
username=`uci get usermanage.input.username`
password=`uci get usermanage.input.password`
        
uci set usermanage.input.macaddr="xx:xx:xx:xx:xx:xx"
uci set usermanage.input.password="********"
uci set usermanage.input.username="username"
uci commit usermanage

echo "${macaddr},${username},${password}" | sed 's/ //g' >> /root/autoconnect/userpasswd.txt