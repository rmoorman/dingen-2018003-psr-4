FROM php:7.2-apache

RUN \
  php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"; \
  php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"; \
  php composer-setup.php --install-dir=/usr/local/bin; \
  php -r "unlink('composer-setup.php');"; \
  mv /usr/local/bin/composer.phar /usr/local/bin/composer;

RUN a2enmod rewrite

ENV DEBIAN_FRONTEND=noninteractive
RUN \
  apt-get update; \
  apt-get install -y git unzip vim

RUN rmdir /var/www/html && ln -sf /dingen/dingen-example/public /var/www/html

VOLUME /dingen
COPY . /dingen

WORKDIR /dingen
