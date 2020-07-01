CREATE DATABASE serv;
CREATE USER 'tfarenga'@'localhost' IDENTIFIED BY 'tfarenga';
GRANT ALL PRIVILEGES ON serv.* TO 'tfarenga'@'localhost';
FLUSH PRIVILEGES;

/*
echo "CREATE DATABASE wordpress;" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' WITH GRANT OPTION;" | mysql -u root --skip-password
echo "update mysql.user set plugin='mysql_native_password' where user='root';" | mysql -u root --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password

CREATE DATABASE serv;
GRANT ALL PRIVILEGES ON serv.* TO 'tfarenga'@'localhost';
FLUSH PRIVILEGES;
update mysql.user set plugin = 'tfarenga' where user='tfarenga';

CREATE DATABASE serv;
CREATE USER 'tfarenga'@'localhost' IDENTIFIED BY 'tfarenga';
GRANT ALL PRIVILEGES ON serv.* TO 'tfarenga'@'localhost';
FLUSH PRIVILEGES;