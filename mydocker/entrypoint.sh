#!/bin/bash
mkdir 1

if [ $? == 0 ]
then
  sh -c "sed '/HELLO WORLD/ s/$/ ${name}/' index_template.html" > /usr/share/nginx/html/index.html
  echo "Starting nginx"
  nginx -g "daemon off;"
fi
