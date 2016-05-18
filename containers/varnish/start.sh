envsubst < /default.vcl.template > /etc/varnish/default.vcl

varnishd -f /etc/varnish/default.vcl -s malloc,${VARNISH_MEM} -a 0.0.0.0:${VARNISH_OUTBOUND_PORT}
varnishlog
