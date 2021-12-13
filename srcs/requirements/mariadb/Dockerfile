FROM		debian:buster

LABEL maintainer="mtak@student.42seoul.kr"

RUN			apt-get update && apt-get -y upgrade
RUN 		apt-get -y install mariadb-server

COPY		./tools/setupDB.sh ./setupDB.sh
RUN			chmod +x ./setupDB.sh

COPY		./conf/my.cnf ./etc/mysql/my.cnf
RUN			chmod +rx ./etc/mysql/my.cnf

EXPOSE 3306

ENTRYPOINT ["./setupDB.sh"]