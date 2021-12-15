FROM debian:buster
EXPOSE 9000
COPY ./tools/install.sh .
COPY ./tools/start.sh .
COPY ./conf/wp-config.php . 
COPY ./conf/www.conf . 
COPY ./conf/php-fpm.conf .
RUN bash install.sh

ENTRYPOINT ["bash", "start.sh"]
