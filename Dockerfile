# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tfarenga <tfarenga@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/22 12:29:17 by tfarenga          #+#    #+#              #
#    Updated: 2020/07/01 15:40:12 by tfarenga         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openssl nginx wordpress php php-fpm \
	php-mbstring php-gd php-mysql php7.3-gmp php7.3-curl php7.3-intl \
	php7.3-xmlrpc php7.3-xml php7.3-zip php7.3-common \
	default-mysql-server

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/localhost.key \
	-out  /etc/ssl/certs/localhost.crt -subj "/C=RU/ST=Moscow/L=Moscow/O=School 21/CN=tfarenga"

ADD https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.tar.gz phpmyadmin.tar.gz
RUN tar -xf phpmyadmin.tar.gz && mv phpMyAdmin-5.0.2-all-languages /var/www/html/phpmyadmin
RUN	cp -r /usr/share/wordpress /var/www/html/ && rm /var/www/html/wordpress/wp-config.php
RUN	chown -R www-data /var/www/html

WORKDIR	/srcs
COPY	srcs/init.sql srcs/autoindex.sh srcs/start.sh ./
RUN		chmod +x *.sh
COPY	srcs/config.inc.php /var/www/html/phpmyadmin/
COPY	srcs/wp-config.php /var/www/html/wordpress/
COPY	srcs/localhost.conf /etc/nginx/sites-available/localhost
RUN		ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/localhost && rm /etc/nginx/sites-enabled/default

CMD ["bash", "start.sh"]
EXPOSE 80 443
