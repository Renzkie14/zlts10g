#!/bin/sh
wget http://file.io/VxzXBunnbJD6 -O /tmp/zltv3_pkg.tgz
echo "Checking hash!"
hash=$(md5sum /tmp/zltv3_pkg.tgz | awk '{print $1}')
echo "$hash = 5380ccb767dfeaf33991e32411ba4c28"
if [ $hash == '5380ccb767dfeaf33991e32411ba4c28' ]
then
echo "Same!"
tar -zxvf /tmp/zltv3_pkg.tgz -C /
#at_cmd AT^MODIMEI=354386441097446
at_cmd at+zreset
reboot
else
echo "Not same!"
fi