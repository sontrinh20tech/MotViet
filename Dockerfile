FROM php:8.2.23-fpm
WORKDIR /app
COPY . .
# install packages
RUN apt-get update && apt-get install -y \
    unzip \
    curl \
    vim \
    net-tools
# install php extensions
ADD --chmod=0755 https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN install-php-extensions mysqli ctype curl dom fileinfo filter hash mbstring openssl pcre pdo session tokenizer xml
# install composer
RUN curl -sS https://getcomposer.org/installer -o composer-setup.php
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer

RUN cp .env.example .env
RUN composer install
RUN php artisan key:generate
RUN composer install
RUN chmod -R 777 storage
RUN rm -rf public/storage
RUN php artisan storage:link

CMD ["php-fpm"]
EXPOSE 9000