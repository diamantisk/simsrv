#FROM i386/debian:7-slim
FROM i386/debian:jessie-slim

#ADD dinstar/bin/* /dinstar/bin/
#ADD dinstar/cfg/* /dinstar/cfg/
COPY ./dinstar /dinstar
RUN chmod 777 -R /dinstar
RUN apt-get update && \
	apt-get install libmysqlclient-dev \
	libsctp-dev \
	libssl-dev -y > /dev/null && \
	rm -rf /var/lib/apt/lists/*
	
WORKDIR /dinstar/bin
CMD ["/dinstar/bin/simsrv"]
#CMD ["/bin/sh","-c","while true; do sleep 1; done"]
