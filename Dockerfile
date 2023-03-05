FROM centos:latest
MAINTAINER vish@gmail.com
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/frica.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip frica.zip
RUN cp -rvf frica/* .
RUN rm -rf frica frica.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
