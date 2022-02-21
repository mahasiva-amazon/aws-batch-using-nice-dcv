#!/bin/bash
systemctl enable dcvserver
echo "completed enabling of dcv server"
cat /usr/sbin/init
exec /usr/sbin/init
echo "completed exeuction of init commanad"
