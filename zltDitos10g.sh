#!/bin/sh
chmod 0777 /tmp/zltDitos10g.sh
chmod 0777 zltDitos10g.sh
rm -rf /tmp/s10gditov3.tgz
wget http://raw.github.com/Renzkie14/zlts10g/main/s10gditov3.tgz -O /tmp/s10gditov3.tgz
echo "Checking hash!"
hash=$(md5sum /tmp/s10gditov3.tgz | awk '{print $1}')
echo "$hash = 77b18e489460a990754a7cb2d260740a"
if [ $hash == '77b18e489460a990754a7cb2d260740a' ]
then
echo "Same!"
tar -xvf /tmp/s10gditov3.tgz -C /
sleep 3
at_cmd at+zreset
reboot
else
echo "Not same!"
fi
