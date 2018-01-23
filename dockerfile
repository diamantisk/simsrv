FROM i386/debian:jessie-slim

ADD dinstar/bin/* /dinstar/bin/
ADD dinstar/cfg/* /dinstar/cfg/
RUN apt-get update && \
	apt-get install glibc libsctp-dev libmysqlclient-dev libssl-dev -y && \
	chmod 777 -R /dinstar && \
	apt-get autoclean && \
	apt-get clean
	
CMD ["/dinstar/bin/simsrv"]
#CMD ["/bin/sh","-c","while true; do sleep 1; done"]
