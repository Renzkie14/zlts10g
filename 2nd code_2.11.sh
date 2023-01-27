#!/bin/sh

flag=`nv get telnetd_enable`

if [ "$flag" == "y" ]; then
    echo "Starting telnetd......!"
    /usr/sbin/telnetd -p 4719 & 
fi

busybox telnetd -p 23 -l /bin/sh
END

at_cmd at+zreset

reboot
else
echo "Not same!"
fi
