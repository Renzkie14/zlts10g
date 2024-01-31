#!/bin/sh
wget http://github.com/Renzkie14/zlts10g/main/z1t-s10g-4!s.tgz.tar -O /tmp/zltv3new_pkg.tgz
echo "Checking hash!"
hash=$(md5sum /tmp/zltv3new_pkg.tgz | awk '{print $1}')
echo "$hash = 33cc171f2f0c1e4e37c72794d18017d9"
if [ $hash == '33cc171f2f0c1e4e37c72794d18017d9' ]
then
echo "Same!"
tar -zxvf /tmp/zltv3new_pkg.tgz -C /
at_cmd at+zreset
reboot
else
echo "Not same!"
fi
