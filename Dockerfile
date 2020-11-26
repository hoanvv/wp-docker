FROM php:7.4-fpm

# Set working directory
WORKDIR /var/www

# Install Node
# RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
# RUN apt-get install -y nodejs

RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install mysqli

# Copy existing application directory contents
COPY . /var/www

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]