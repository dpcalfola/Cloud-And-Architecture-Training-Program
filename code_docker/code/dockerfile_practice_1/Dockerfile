# First tru to make Dockerfile

FROM ubuntu

LABEL maintainer="github.com/dpcalfola"

RUN apt-get update -y && \
    apt-get install apache2 -y


ADD test.html /var/www/html
ADD green.png /var/www/html

WORKDIR /var/www/html

RUN ["/bin/bash", "-c", "echo hello >> test2.html"]

EXPOSE 80

CMD ["apachectl", "-DFOREGROUND"]
