#!/bin/sh
#安装程序
yum install mariadb-server mariadb httpd epel-release yum-utils  -y
systemctl enable mariadb.service
systemctl enable httpd.service
yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y
yum-config-manager --enable remi-php72
yum install php php-mysql -y
yum install php-fpm php-gd -y

#安装wordpress
tar zxf wordpress.tar.gz
rm -rf /var/www/html
mv wordpress /var/www/html

#设置www文件夹的所有者和用户组为apache，这样apache才有绝对的权限修此目录，否则wordpress会出现需要手动创建wp-config.php文件的情况
chown -R apache:apache /var/www

