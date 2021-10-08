FROM debian:buster

RUN apt-get update && apt-get -y install wget php7.3 php-mysqli php-fpm mariadb-client
WORKDIR /var/www/wordpress
COPY ./conf/* ./
COPY ./tools/* ./
RUN chmod +x ./init-wp.sh && ./init-wp.sh
CMD /usr/sbin/php-fpm7.3 -F
