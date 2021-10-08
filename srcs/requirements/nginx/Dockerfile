FROM debian:buster
RUN apt-get  update && apt-get  install nginx -y && apt-get  install openssl -y \
&& openssl req -x509 -nodes -days 365 -subj \
"/C=RU/ST=Russia/L=Moscow/O=21/OU=school21/CN=ltulune" \
-newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key \
-out /etc/ssl/certs/nginx-selfsigned.crt;
COPY ./conf/nginx.conf etc/nginx/sites-enabled/default
CMD ["nginx", "-g", "daemon off;"]
