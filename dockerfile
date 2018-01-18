FROM i386/alpine:3.6

RUN apt-get update && apt-get install libstdc++ libsctp-dev -y

RUN mkdir -p /var/log/

ADD dinstar/bin/* /dinstar/bin/
ADD dinstar/cfg/* /dinstar/cfg/
RUN chmod 777 -R /dinstar

RUN touch /var/log/simsrv.log
RUN chmod 777 /var/log/simsrv.log

WORKDIR /dinstar/bin/
CMD ["./simsrv"]