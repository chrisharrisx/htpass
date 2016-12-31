#!/bin/bash
cat <<EOT >> $PWD/.htaccess
AuthType Basic
AuthName "Password Protected Area"
AuthUserFile $PWD/.htpasswd
Require valid-user
EOT
echo "Please enter a username: "
read username
htpasswd -c .htpasswd $username
