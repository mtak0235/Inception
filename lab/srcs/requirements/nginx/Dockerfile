FROM debian:buster

LABEL maintainer="mtak@student.42seoul.kr"

RUN apt-get update && apt-get -yq upgrade

RUN apt-get install -yq nginx \
					openssl

COPY ./conf/nginx.conf /etc/nginx/sites-available/default
RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
COPY ./conf/index.html /www/index.html

RUN openssl req -newkey rsa:4096 -days 365 -nodes -x509 \
	-subj "/C=KR/ST=Seoul/L=Seoul/O=42Seoul/OU=Tak/CN=localhost" \
	-keyout localhost.dev.key \
	-out localhost.dev.crt
RUN mv localhost.dev.crt etc/ssl/certs/
RUN mv localhost.dev.key etc/ssl/private/
RUN chmod 600 etc/ssl/certs/localhost.dev.crt etc/ssl/private/localhost.dev.key

EXPOSE 443 80

ENTRYPOINT ["nginx","-g","daemon off;"]
