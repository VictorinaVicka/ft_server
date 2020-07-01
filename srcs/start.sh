# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tfarenga <tfarenga@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/25 14:58:24 by tfarenga          #+#    #+#              #
#    Updated: 2020/07/01 15:04:43 by tfarenga         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

service mysql start && mysql < init.sql
service php7.3-fpm start && service nginx start

while true
do
	sleep 1
done