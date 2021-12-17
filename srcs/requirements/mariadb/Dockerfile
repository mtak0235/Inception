FROM debian:buster
EXPOSE 3306
RUN apt-get update
RUN apt-get install -yq mariadb-server
COPY ./tools/start.sh /
RUN chmod 777 ./start.sh
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
RUN mysql_install_db
ENTRYPOINT ["bash", "start.sh"]

