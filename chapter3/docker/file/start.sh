#!/bin/sh
#数据库初始化脚本。
mysql < /root/mysql.sql
systemctl disable start.service
rm -rf /root/* /usr/lib/systemd/system/start.service
