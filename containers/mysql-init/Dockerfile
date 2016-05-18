FROM alpine:3.3

MAINTAINER Jack Beasley <jack.beasley@gmail.com>

RUN apk add --no-cache openssh

# Set volume to mount hostPath
ENV VOLUME /mnt/mysql-init-data

# Copy keyfiles
COPY ssh_id_rsa /ssh_id_rsa

# Copy script
COPY get-db-data.sh /get-db-data.sh

CMD /get-db-data.sh
