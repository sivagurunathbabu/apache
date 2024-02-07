FROM ubuntu:latest
RUN apt update && apt install -y apache2
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_RUN_DIR /var/www/html
RUN echo 'Hello, docker' > /var/www/html/index.html
RUN echo 'ServerName \$HOSTNAME' > /etc/apache2/apache2.conf
ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]

