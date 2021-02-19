#!/bin/bash
randomcookie_name=`cat /dev/urandom | tr -cd 'a-zA-Z0-9' | head -c 10`
randomcookie_secret=`cat /dev/urandom | tr -cd 'a-zA-Z0-9' | head -c 10`

echo 'cookie_name: '$randomcookie_name'						#Sets cookie name (Option: string)
cookie_secret: '$randomcookie_secret'			#Sets cookie secret key (Option: random string)
ipv6_support: no						#Enable/Disable IPv6 (Option: yes or no)
' > /vddos/conf.d/cus/vddos.conf
vddos reload
