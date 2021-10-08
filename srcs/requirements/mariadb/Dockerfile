FROM debian:buster

ARG DATABASE_NAME=default_value
ARG MYSQL_USER=default_value
ARG MYSQL_USER_PASSWORD=default_value
ARG MYSQL_ROOT_PASSWORD=default_value

RUN apt-get update && apt-get install -y -q mariadb-server mariadb-client \
&& mkdir -p /var/lib/mysql && mkdir -p /var/log/mysql && chown mysql:mysql /var/log/mysql
COPY ./conf /
COPY ./tools/init-db.sh /
RUN chmod +x ./init-db.sh && ./init-db.sh
EXPOSE 3306
CMD /usr/bin/mysqld_safe
