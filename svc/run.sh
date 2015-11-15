#!/bin/sh

cd /svc

bundle install
exec bundle exec puma -C config/puma.rb --pidfile /var/run/svc.pid
