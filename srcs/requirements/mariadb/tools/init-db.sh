#!bin/bash
mv ./50-server.cnf /etc/mysql/mariadb.conf.d/
service mysql start
echo "CREATE DATABASE wordpress;"| mysql -u root --skip-password
echo "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_USER_PASSWORD';" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON wordpress.* TO '$MYSQL_USER'@'%' WITH GRANT OPTION;"| mysql -u root --skip-password
echo "FLUSH PRIVILEGES;"| mysql -u root --skip-password
mysql -u root wordpress < ./dump-wp.sql
mysqladmin -u root password $MYSQL_ROOT_PASSWORD
rm -f ./dump-wp.sql
