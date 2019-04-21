FROM alpine:3.6

RUN apk add --no-cache bind

EXPOSE 53/tcp 53/udp
VOLUME ["/etc/bind"]

CMD ["/usr/sbin/named", "-f", "-g"]
