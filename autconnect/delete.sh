#!/bin/sh

macaddr=$(uci get usermanage.input.macaddr)
sed -i "/^${macaddr}/d" /root/autoconnect/userpasswd.txt

uci set usermanage.input.macaddr="xx:xx:xx:xx:xx:xx"
uci commit usermanage