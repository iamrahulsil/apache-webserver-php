FROM centos:latest

MAINTAINER RAHUL SIL<rahul.official.150@gmail.com>

RUN yum install httpd php net-tools -y && \
    mkdir /run/php-fpm

WORKDIR /var/www/html

COPY lw.php   .

COPY startscript.sh  .

ENTRYPOINT [ "bash", "startscript.sh" ]

