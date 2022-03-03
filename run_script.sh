#!/bin/bash
systemctl enable dcvserver
cat /usr/sbin/init
exec /usr/sbin/init
