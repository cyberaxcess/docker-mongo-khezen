#!/bin/bash
mongoshell="mongo"
if [ "$AUTH" == "y" ] && [ -f /config/.admin_created ];then
  mongoshell="$mongoshell -u $ADMIN_USER -p $ADMIN_PWD --authenticationDatabase $ADMIN_AUTHENTICATION_DATABASE"
fi
echo $mongoshell
