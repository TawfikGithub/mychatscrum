#!/bin/bash

cd /web/www/Django/ScrumMaster/ && nohup python3.6 manage.py migrate && nohup python3.6 manage.py runserver 0.0.0.0:5000 &
/usr/sbin/nginx
/bin/chmod -R 777 /run/chatscrumuwsgi/
/usr/sbin/uwsgi --ini /etc/uwsgi.d/chatscrum.ini
/bin/chmod -R 777 /run/chatscrumuwsgi/
