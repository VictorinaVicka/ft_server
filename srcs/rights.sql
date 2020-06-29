CREATE DATABASE serv;

CREATE USER 'tfarenga'@'localhost' IDENTIFIRED BY 'tfarenga';
GRANT ALL PRIVILEGES ON phpmyadmin.* TO 'tfarenga'@'localhost';
FLUSH PRIVILEGES