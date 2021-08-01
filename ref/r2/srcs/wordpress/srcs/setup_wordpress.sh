#!/bin/sh
echo "wordpresssssssssss"
/sbin/ip route|awk '/default/ { print $3 }'
php-fpm7 -F -R