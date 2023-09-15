FROM ubuntu
LABEL maintainer="github.com/dpcalfola"

COPY ../DB_PHP /var/www/html

EXPOSE 8000

RUN apt update -y && \
    apt install -y apache2

CMD ["apachectl", "-DFOREGROUND"]
