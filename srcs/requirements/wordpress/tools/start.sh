[ "$(ls -A /var/www/html/)" ] && echo "Something non-wordpress exists" || mv /wordpress/* /var/www/html/
php-fpm7.3 --nodaemonize