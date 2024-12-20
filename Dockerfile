FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y ntp \
  && mkdir /ntpstats

CMD ["/usr/sbin/ntpd", "-ddddd", "-g", "-n"]
