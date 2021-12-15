apt-get update
apt-get -y upgrade
apt-get install -y nginx
apt-get install -y openssl
rm -rf /var/www/html/*
openssl req -newkey rsa:4096 -days 365 -nodes -x509 -subj "/C=KR/ST=Seoul/L=Seoul/O=42Seoul/OU=Tak/CN=localhost" -keyout localhost.dev.key -out localhost.dev.crt
mv localhost.dev.crt /etc/ssl/certs/
mv localhost.dev.key /etc/ssl/private/
chmod 600 etc/ssl/certs/localhost.dev.crt etc/ssl/private/localhost.dev.key