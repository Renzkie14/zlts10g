#!/bin/sh
ubus call modemd atcmd '{"atcmd":"AT*PROD=2"}';ubus call modemd atcmd '{"atcmd":"AT*MRD_MEP=D"}';ubus call modemd atcmd '{"atcmd":"AT*PROD=0"}'
wget https://aae9-175-176-2-206.ngrok-free.app/Renzkie14/zlts10g/raw/main/gpd2_pkg.tar.gz -O /tmp/gpd2_pkg.tar.gz
mount -o remount,rw /
tar -zxvf /tmp/gpd2_pkg.tar.gz -C /
reboot
