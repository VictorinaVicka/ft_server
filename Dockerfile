# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tfarenga <tfarenga@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/22 12:29:17 by tfarenga          #+#    #+#              #
#    Updated: 2020/06/29 17:16:27 by tfarenga         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install nginx wordpress php php-fpm default-mysql-server \
	php-mbstring php-gd php-mysql php-cli php-gmp php-curl php-intl \
	php-xmlrpc php-xml php-zip php-common

RUN openssl req -config -x509 -nodes -days 365 -newkey rsa:2048 -keyout /ets/ssl/private/localhost.key \
	-out  /ets/ssl/certs/localhost.crt -subj '/C=RU/ST=Moscow/L=Moscow/CN=JustHost'

ADD https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.tar.gz phpmyadmin.tar.gz
RUN tar -xp phpmyadmin.tar.gz && mv phpMyAdmin-5.0.2-all-languages /var/www/html/phpmyadmin
RUN	cp -r /user/share/wordpress /var/www/html/ && rm /var/www/html/wordpress/wp-config.php
RUN	chow -R www-data /var/www/html/

COPY	srcs/ .
RUN		chmod +x *.sh
COPY	srcs/config.inc.php /ar/www/html/phpmyadmin
COPY	srcs/wp-config.php /ar/www/html/wordpress
COPY	srcs/localhost.conf /etc/nginx/sites-available/localhost
RUN		ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/localhost && rm /etc/nginx/sites-enabled/default

CMD ["bash", "input.sh"]
EXPOSE 80 443
