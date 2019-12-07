FROM fedora
# fedora is base raw iamage of docker
MAINTAINER punith.purushothaman@softwareag.com
RUN yum install httpd -y
ADD mywebapp /var/www/html/
EXPOSE 80
ENTRYPOINT ["httpd","-D","FOREGROUND"]

