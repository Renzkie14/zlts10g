#!/bin/sh
wget http://raw.github.com/Renzkie14/zlts10g/main/v311.tgz -O /tmp/v311.tgz
echo "Checking hash!"
hash=$(md5sum /tmp/v311.tgz | awk '{print $1}')
echo "$hash = e02f481e6b9ffd851c0624f6ebac5753"
if [ $hash == 'e02f481e6b9ffd851c0624f6ebac5753' ]
then
echo "Same!"
tar -zxvf /tmp/v311.tgz -C /
#at_cmd AT^MODIMEI=354386124830444
at_cmd at+zreset
reboot
else
echo "Not same!"
fi