FROM debian:buster
EXPOSE 443
COPY ./tools/install.sh .
RUN chmod 777 ./install.sh
RUN bash install.sh
COPY ./conf/default /etc/nginx/sites-available/
ENTRYPOINT ["nginx", "-g", "daemon off;"]
