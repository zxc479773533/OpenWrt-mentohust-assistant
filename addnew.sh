#!/bin/sh /etc/rc.common

add_new()
{
        local username
        local password
        local macaddr

        config_get username $1 username
        config_get password $1 password
        config_get macaddr $1 macaddr

        echo "config input" > /etc/config/smarthust
        echo "  option macaddr ''" >> /etc/config/smarthust
        echo "  option username ''" >> /etc/config/smarthust
        echo "  option password ''" >> /etc/config/smarthust
        echo "${macaddr},${username},${password}" >> /usr/smarthust/data.txt
}

start()
{
        config_load smarthust
        config_foreach add_new input
}
