FROM i386/debian:jessie-slim

ADD dinstar/bin/* /dinstar/bin/
ADD dinstar/cfg/* /dinstar/cfg/
RUN apt-get update && apt-get install gcc libsctp-dev libmysqlclient-dev libssl-dev telnet -y && chmod 777 -R /dinstar

#CMD ["/dinstar/bin/simsrv"]
CMD ["/bin/sh","-c","while true; do sleep 1; done"]
