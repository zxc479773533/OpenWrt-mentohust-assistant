#!/bin/sh

INITSLEEPTIME=1
SLEEPTIME=5
userpasswdfile="/root/autoconnect/userpasswd.txt"
macfile="/tmp/dhcp.leases"

sleep $INITSLEEPTIME

while true
do
  i=`ps | grep mentohust | grep -v grep | wc -l`
  if [ $i -eq 0 ] ; then
    echo "Dropped!"
    nowuser=`uci get mentohust.@mentohust[0].Username`
    for userpasswd in $(cat $userpasswdfile)
    do
      mac=${userpasswd:0:17}
      if [ `cat $macfile | grep $mac | wc -l` -ne 0 ] ; then
        user=${userpasswd:18:10}
        passwd=${userpasswd:29}
        uci set mentohust.@mentohust[0].Username="$user"
        uci set mentohust.@mentohust[0].Password="$passwd"
        /root/down/runmentohust &
        echo "Restart $user"
        sleep 10
        break
      fi
    done
  fi
  sleep $SLEEPTIME  
done