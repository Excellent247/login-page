FROM ubuntu:latest
LABEL vendor="EastHub NG"
RUN apt-get update && apt-get install -y apache2
COPY index.html /var/www/html/
COPY profile_pic*.jpg /var/www/html/
COPY login.html /var/www/html/
COPY register.html /var/www/html/
COPY style.css /var/www/html/
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80