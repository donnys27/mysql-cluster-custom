#!/bin/bash

/etc/init.d/mysql stop
/usr/bin/mysqld_safe --skip-grant-tables --skip-networking &
mysql -u${globals.DB_USER} -p --execute="UPDATE mysql.user SET password = PASSWORD('${globals.DB_PASSWORD}') WHERE User = '${globals.DB_USER}';"