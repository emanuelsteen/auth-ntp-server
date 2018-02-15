FROM debian:stretch

RUN apt-get update \
  && apt-get install -y ntp \
  && mkdir /ntpstats

CMD ["/usr/sbin/ntpd", "-ddddd", "-g", "-n"]

