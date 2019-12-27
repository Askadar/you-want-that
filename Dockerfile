FROM php:apache

WORKDIR /var/www/html
COPY ./data ./

CMD ["apache2ctl", "-D", "FOREGROUND"]
