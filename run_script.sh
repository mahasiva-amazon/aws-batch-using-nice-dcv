#!/bin/bash
systemctl enable dcvserver
echo completed enabling of dcv server
ls -ltr /usr/sbin/init
exec /usr/sbin/init
