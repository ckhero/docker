# 基础镜像
FROM ckhero/base:v1.0.0

## NGINX
#RUN rpm -Uvh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
RUN yum install -y nginx


## MYSQL
#RUN wget https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm
#RUN rpm -ivh mysql57-community-release-el7-9.noarch.rpm
RUN yum install -y mysql-server
#RUN systemctl start mysqld


# 暴露端口
# nginx
EXPOSE 80
# mysql
EXPOSE 3306
COPY start.sh /
RUN chmod +x /start.sh

#CMD ["nginx", "-g", "daemon off;"]
CMD sh /start.sh
