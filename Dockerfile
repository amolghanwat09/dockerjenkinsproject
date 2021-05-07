FROM centos:latest
MAINTAINER amolghanwat09@gmail.com
RUN yum install -y httpd \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/* .
RUN cp rm -rf _MACOSX markups-kindle kindle.zip
CMD ["/usr/bin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

