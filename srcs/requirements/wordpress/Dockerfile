FROM debian:buster
EXPOSE 9000
COPY ./conf/www.conf . 
COPY ./tools/start.sh .
COPY ./tools/install.sh .
RUN bash install.sh
RUN chmod 777 ./install.sh
WORKDIR /var/www/wordpress
ENTRYPOINT ["bash", "start.sh"]