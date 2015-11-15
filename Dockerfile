FROM paperstash/env:0.1.0
MAINTAINER Michael Williams <mike@paperstash.org>
ENV REFRESHED_AT 2015-11-14

RUN mkdir /etc/service/svc
ADD svc/run.sh /etc/service/svc/run

ONBUILD ADD app /svc/app
ONBUILD ADD config /svc/config
ONBUILD ADD db /svc/db
ONBUILD ADD public /svc/public
ONBUILD ADD config.ru /svc/config.ru
ONBUILD ADD Gemfile /svc/Gemfile
ONBUILD ADD Gemfile.lock /svc/Gemfile.lock
ONBUILD ADD Rakefile /svc/Rakefile
ONBUILD ADD VERSION /svc/VERSION
