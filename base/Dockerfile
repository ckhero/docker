FROM centos:7

RUN yum install -y wget  && \

#1.下载第一个阿里云仓库文件
 wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo && \
#2.配置第二个仓库文件 epel 额外仓库（redis，nginx，mongo，ipython）
 wget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo && \
#3.清空原本yum缓存
 yum clean all && \
#4.生成新的阿里云的yum缓存，加速下载预热数据
 yum makecache && \

 yum -y update && \

 yum install -y docker && \

## NGINX
 rpm -Uvh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm && \

## MYSQL
 wget https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm && \
 rpm -ivh mysql80-community-release-el7-3.noarch.rpm


CMD docker version