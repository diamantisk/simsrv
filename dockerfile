FROM busybox:ubuntu

ADD dinstar/bin/* /dinstar/bin/
ADD dinstar/cfg/* /dinstar/cfg/
RUN apt-get update && \
	apt-get install libsctp-dev libmysqlclient-dev libssl-dev -y > /dev/null && \
	chmod 777 -R /dinstar && \
	apt-get autoclean && \
	apt-get clean && \
	apt-get autoremove && \
	rm -rf /var/lib/apt/lists/*
	
WORKDIR /dinstar/bin
CMD ["/dinstar/bin/simsrv"]
#CMD ["/bin/sh","-c","while true; do sleep 1; done"]
