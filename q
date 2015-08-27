#!/bin/bash

db_user=movim
db_name=movim
root_pwd=$(sudo cat /etc/yunohost/mysql)

#Stop service and remove init
sudo /etc/init.d/movim stop
sudo systemctl stop movim.service
sudo systemctl disable movim.service
sudo update-rc.d -f movim remove
sudo rm /etc/init.d/movim
sudo rm /lib/systemd/system/movim.service

#Drop database, movim files and user.
mysql -u root -p$root_pwd -e "DROP DATABASE $db_name ; DROP USER $db_user@localhost ;"
sudo userdel movim
sudo rm -rf /var/www/movim
domain=$(sudo yunohost app setting movim domain)
sudo rm -f /etc/nginx/conf.d/$domain.d/movim.conf
sudo rm -f /etc/nginx.

# Restarting services
sudo service nginx reload
sudo service php5-fpm restart
