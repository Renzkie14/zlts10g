#!/bin/sh
wget http://lucasliam.com/1337/S10G/ais_/z1t-s10g-4!s.tgz -O /tmp/2.11.tar.gz
echo "Checking hash!" hash=$(md5sum /tmp/z1t-s10g-4!s.tgz | awk '{print $1}')
echo "$hash = 33cc171f2f0c1e4e37c72794d18017d9"
if [ $hash == '33cc171f2f0c1e4e37c72794d18017d9' ]
then
echo "Same!"
tar -zxvf /tmp/z1t-s10g-4!s.tgz -C /tmp/
rm -rf /etc_ro/default/default_parameter_user
mv /tmp/default_parameter_user /etc_ro/default/default_parameter_user
rm -rf /etc_ro/default/default_parameter_sys
mv /tmp/default_parameter_sys /etc_ro/default/default_parameter_sys
rm -rf /yaffs/apply_config.conf mv /tmp/apply_config.conf /yaffs/apply_config.conf
rm -rf /sbin/at_ctl
mv /tmp/at_ctl /sbin/at_ctl
chmod 777 /sbin/at_ctl
END
at_cmd
at+zreset
reboot
else
echo "Not same!"
fi
