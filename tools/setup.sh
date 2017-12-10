#!/bin/bash

dbaddress="$1"
dbname="$2"
dbuser="$3"
dbpw="$4"
sec="$5"

[ -z "$sec" ] && sec=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)

set="ZionHostDNS/settings.py"

cp $set.dist $set

echo "Setting up with db sql://$dbuser:***@$dbaddress/$dbname"

sed "s|soome-secret-key--please-change-me-now|$sec|g" -i $set
sed "s|'NAME': 'powerdns'|'NAME': '$dbname'|g" -i $set
sed "s|'USER': 'powerdns'|'USER': '$dbuser'|g" -i $set
sed "s|powerdns-password'|$dbpw'|g" -i $set
sed "s|localhost'|$dbaddress'|g" -i $set

python2 manage.py migrate
