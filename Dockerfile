FROM php:8.2-apache

# Cài đặt các extension MySQL cho PHP
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Bật module rewrite của Apache
RUN a2enmod rewrite

# Copy mã nguồn vào container
COPY . /var/www/html/

# Phân quyền cho Apache
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80

