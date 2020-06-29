# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    input.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tfarenga <tfarenga@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/25 14:58:24 by tfarenga          #+#    #+#              #
#    Updated: 2020/06/29 17:17:07 by tfarenga         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

service php-fpm start && service nginx start

while true
do
	sleep 1
done