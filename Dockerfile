FROM centos
MAINTAINER Ninad Date
ENV PATH /usr/sbin:$PATH
RUN yum -y update \
    && yum install -y httpd
RUN echo "Welcome to Openshift testing" /var/www/html/index.html
EXPOSE 80
CMD ["httpd" , "-D" , "FOREGROUND"]
