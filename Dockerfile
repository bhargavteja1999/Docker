FROM ubuntu:latest


RUN apt update && apt install wget apache2 unzip -y

RUN wget https://www.tooplate.com/zip-templates/2137_barista_cafe.zip

RUN unzip 2137_barista_cafe.zip

RUN cp -r 2137_barista_cafe/* /var/www/html

WORKDIR /var/www/html

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

