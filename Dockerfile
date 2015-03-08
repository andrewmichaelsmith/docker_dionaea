FROM ubuntu:14.04

#RUN useradd -u 499 dionaea  && echo "dionaea:dioanea" | chpasswd

RUN apt-get update
RUN apt-get install -y software-properties-common


RUN add-apt-repository -y ppa:honeynet/nightly
RUN apt-get update
RUN apt-get install -y dionaea-phibo

ADD conf/dionaea.conf /etc/dionaea/dionaea.conf
ADD bin/launch.sh /usr/bin/launch.sh

EXPOSE 21 42 80 135 443 445 1433 3306 5060 5061

CMD launch.sh
