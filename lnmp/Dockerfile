# 基础镜像
FROM ckhero/base:v1.0.1

COPY start.sh /
COPY default_8080.conf /etc/nginx/conf.d/

    ## NGINX
    #RUN rpm -Uvh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
RUN yum install -y nginx &&\


    ## php
    rpm -Uvh https://mirror.webtatic.com/yum/el7/epel-release.rpm && \

    rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm && \

    yum -y install php71w-tidy php71w-common php71w-devel php71w-pdo php71w-mysql php71w-gd php71w-ldap php71w-mbstring php71w-mcrypt php71w-fpm && \

    ## MYSQL
    ## https://segmentfault.com/a/1190000015634108
    #RUN wget https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm
    #RUN rpm -ivh mysql57-community-release-el7-9.noarch.rpm
    # yum install -y mysql-server &&\
    #RUN systemctl start mysqld
#    yum -y install mysql-community-server &&\

    chmod +x /start.sh && \

    ## 创建 根目录
    mkdir /web && \
    mkdir /log && \
    chmod 777 /log

# 暴露端口
# nginx
EXPOSE 80
# mysql
EXPOSE 3306


#CMD ["nginx", "-g", "daemon off;"]
CMD sh /start.sh
