FROM i386/gcc:4.8

RUN apt-get update && apt-get install libsctp-dev -y

ADD dinstar /
RUN chmod 777 -R /dinstar

RUN touch /var/logs/simsrv.log
RUN chmod 777 /var/logs/simsrv.log

RUN ls -al /dinstar/

CMD ["tail","-f","/var/logs/simsrv.log"]