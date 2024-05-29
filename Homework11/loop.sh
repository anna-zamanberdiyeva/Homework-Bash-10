#!/bin/bash

function user() {
  for user in emma mia chloe zoe
    do
      useradd $user
  done
}

function folder() {
  for folders in day week month year
    do
      mkdir $folders
  done
}

function install() {
  for install in wordpress  
    do
      yum install -y wget httpd php php-mysql $install
      systemctl start httpd $install
      systemctl enable httpd $install
      wget https://wordpress.org/latest.tar.gz $install
      tar -xzvf latest.tar.gz
      rsync -avP wordpress/ /var/www/html/
      chown -R www-data:www-data /var/www/html/
      chmod -R 755 /var/www/html/
      systemctl restart httpd
    echo "wordpress installed"
  done
}


if [ "$1" == "create_users" ]
 then
     create_users
elif [ "$2" == "create_folders" ]
 then
     create_folders
elif [ "$3" == "install_wordpress" ]
 then
     install_wordpress 
else
     echo "Error has occured. Use users, folders, or install"
fi
