#!/bin/bash

DISK=95
EMAIL=mail@gmai.com
PARTION=C:\

USE=$(df -h | grep C:\ | awk '{ print $5}'| cut -d '%' -f1)

if[$USE -gt $DISK];
    then 
        echo "percent used :$USE" | mail -s "running out of disk space" $EMAIL
fi