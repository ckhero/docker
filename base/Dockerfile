FROM centos:7

RUN yum install -y docker

RUN yum install -y wget

## NGINX
RUN rpm -Uvh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm

## MYSQL
RUN wget https://dev.mysql.com/get/mysql80-community-release-el8-1.noarch.rpm
RUN rpm -ivh mysql80-community-release-el8-1.noarch.rpm


CMD docker version