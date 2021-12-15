apt-get update
apt-get upgrade -y
apt-get install -y vim
apt-get install -y unzip
apt-get install -y wget
apt-get install -y php-fpm php-mysql
mkdir -p /var/www/html
wget https://wordpress.org/latest.zip
unzip latest.zip
rm -rf latest.zip
mv ./wp-config.php ./wordpress/
mv ./www.conf /etc/php/7.3/fpm/pool.d/
mv ./php-fpm.conf /etc/php/7.3/fpm/
service php7.3-fpm start
service php7.3-fpm stop