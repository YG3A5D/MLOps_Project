FROM centos:latest
MAINTAINER 2019BTCS088@student.suas.ac.in
RUM yum install -y httpd \
zip  \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/downloads/page258/loxury.zip  /var/www/html
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury/* .
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
