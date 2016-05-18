FROM alpine:3.3

MAINTAINER jack.beasley@gmail.com

RUN apk add --no-cache openssh

# Where the payload is unpacked. Should be the wordpress data volume
ENV VOLUME /var/www/html
ENV SCP_IP 107.170.242.240

# Copy keyfiles
COPY ssh_id_rsa /ssh_id_rsa

# Copy script
COPY copy-data.sh /copy-data.sh

CMD /copy-data.sh
