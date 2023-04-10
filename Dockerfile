FROM php:7.4-apache

# Install PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Copy application code to container
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Apache web server
CMD ["apache2-foreground"]
