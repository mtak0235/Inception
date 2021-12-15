FROM debian:buster

LABEL maintainer="mtak@student.42seoul.kr"

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y php-fpm \
					php-mysql \
					wget \
					tar

RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xvf latest.tar.gz \
	&& mv ./wordpress /tmp \
	&& rm latest.tar.gz \
	&&mkdir -p var/www/ 

COPY ./conf/wp-config.php /var/www/wordpress
COPY ./tools/setWP.sh ./
RUN chmod 755 -R /var/www/wordpress 
RUN chmod +x ./setWP.sh
RUN 	sed -i "/listen =/d" /etc/php/7.3/fpm/pool.d/www.conf
RUN 	echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf
RUN 	mkdir -p /run/php/

EXPOSE 9000

ENTRYPOINT ["./setWP.sh"]