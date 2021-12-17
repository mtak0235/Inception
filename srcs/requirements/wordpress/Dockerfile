FROM debian:buster
EXPOSE 9000
COPY ./conf/www.conf . 
COPY ./tools/install.sh .
RUN bash install.sh
COPY ./tools/start.sh /var/www/wordpress/
WORKDIR /var/www/wordpress
ENTRYPOINT ["bash", "start.sh"]