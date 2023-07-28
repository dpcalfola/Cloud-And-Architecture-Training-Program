FROM ubuntu:jammy-20230624
LABEL maintainer="github.com/dpcalfola"


COPY ./vsftpd.conf /tmp/vsftpd.conf
WORKDIR /home

EXPOSE 20 21 22
RUN apt-get update -y && \
    apt-get install neovim -y && \
    apt-get install vsftpd -y && \
    apt-get install openssh-server -y && \
    cp /tmp/vsftpd.conf /etc/vsftpd.conf && \
    adduser --disabled-password --gecos "" mzc-ftp && \
    echo 'mzc-ftp:mzc-password' | chpasswd && \
    mkdir /home/mzc-ftp/ftp && \
    chown nobody:nogroup /home/mzc-ftp/ftp && \
    chmod a-w /home/mzc-ftp/ftp && \
    mkdir /home/mzc-ftp/ftp/backup-data && \
    chown mzc-ftp:mzc-ftp /home/mzc-ftp/ftp/backup-data && \
    service vsftpd start

CMD tail -f /dev/null
