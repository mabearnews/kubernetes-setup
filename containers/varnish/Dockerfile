FROM alpine:3.3

MAINTAINER Jack Beasley <jack.beasley@gmail.com>

RUN apk add --no-cache varnish gettext

ENV VARNISH_OUTBOUND_PORT 80
ENV VARNISH_MEM 200M

COPY varnish.template /default.vcl.template
COPY default.vcl.template /default.vcl.template

COPY start.sh /start.sh

CMD /start.sh
