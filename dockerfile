FROM i386/debian:7-slim

ADD dinstar/bin/* /dinstar/bin/
ADD dinstar/cfg/* /dinstar/cfg/
RUN apt-get update && \
	apt-get install libc6-dev libsctp-dev libmysqlclient-dev libssl-dev -y && \
	chmod 777 -R /dinstar && \
	apt-get autoclean && \
	apt-get clean && \
	apt-get autoremove 
	
CMD ["/dinstar/bin/simsrv"]
#CMD ["/bin/sh","-c","while true; do sleep 1; done"]
