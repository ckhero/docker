#!/bin/bash
systemctl start mysqld
grep 'temporary password' /var/log/mysqld.log
nginx -g "daemon off;"