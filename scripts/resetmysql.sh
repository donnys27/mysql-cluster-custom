#!/bin/bash

/etc/init.d/mysql stop
/usr/bin/mysqld_safe --skip-grant-tables --skip-networking &