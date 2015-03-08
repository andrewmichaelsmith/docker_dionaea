FROM ubuntu:14.04

#RUN useradd -u 499 dionaea  && echo "dionaea:dioanea" | chpasswd

RUN apt-get update
RUN apt-get install -y software-properties-common


RUN add-apt-repository -y ppa:honeynet/nightly
RUN apt-get update
RUN apt-get install -y dionaea-phibo

ADD conf/dionaea.conf /etc/dionaea/dionaea.conf
ADD bin/launch.sh /usr/bin/launch.sh

EXPOSE 21  
EXPOSE 42  
EXPOSE 80  
EXPOSE 135 
EXPOSE 443 
EXPOSE 445 
EXPOSE 1433
EXPOSE 3306
EXPOSE 5060
EXPOSE 5061

EXPOSE 69/udp
EXPOSE 5060/udp

CMD launch.sh
