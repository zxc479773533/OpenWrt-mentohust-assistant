#!/bin/sh

path='/usr/lib/lua/luci'

chmod 755 auto.sh
chmod 755 automentohust


cp automentohust /etc/init.d/automentohust
/etc/init.d/automentohust enable

mkdir ${path}/model/cbi/usermanage

cp input.lua ${path}/model/cbi/usermanage/input.lua
cp delete.lua ${path}/model/cbi/usermanage/delete.lua

cp usermanage.lua ${path}/controller/usermanage.lua
chmod 755 ${path}/controller/usermanage.lua

cp usermanage /etc/config

chmod 755 addnew.sh
chmod 755 delete.sh

rm -rf /tmp/luci-*