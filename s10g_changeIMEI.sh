#!/bin/sh
echo "ZLT-S10G imei change..."
at_cmd AT^MODIMEI=354386441097446
echo "wait for the modem to reboot..."
at_cmd at+zreset
reboot
