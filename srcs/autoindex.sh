# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    autoindex.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tfarenga <tfarenga@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/25 15:20:24 by tfarenga          #+#    #+#              #
#    Updated: 2020/06/30 21:41:34 by tfarenga         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

if grep -q "autoindex on" /etc/nginx/sites-available/localhost
then
	sed -i 's/autoindex on/autoindex off/' /etc/nginx/sites-available/localhost
	echo "autoindex disabled"
	service nginx restart
elif grep -q "autoindex off" /etc/nginx/sites-available/localhost
then
	sed -i 's/autoindex off/autoindex on/' /etc/nginx/sites-available/localhost
	echo "autoindex enablead"
	service nginx restart
fi
