FROM centos:latest
MAINTAINER 2019BTCS088@student.suas.ac.in
RUM yum install -y httpd \
zip  \
unzip
ADD https://mlopsfrontpage.s3.amazonaws.com/  /var/www/html
WORKDIR /var/www/html
RUN unzip mlpage.zip
RUN cp -rvf mlpage/* .
RUN rm -rf mlpage mlpage.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
