# Use an official PHP runtime as a parent image
FROM php:7.3-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Copy your PHP application code into the container
COPY ./DB_PHP /var/www/html



# Expose port 80 for Apache
EXPOSE 80

# Start the Apache web server (no need for systemctl)
CMD ["apache2-foreground"]
