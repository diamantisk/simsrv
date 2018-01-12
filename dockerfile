FROM i386/gcc:4.8
RUN mkdir -p /dinstar/bin
RUN mkdir -p /var/logs
ADD simsrv /dinstar/bin/simsrv
RUN chmod 777 /dinstar/bin/simsrv
RUN touch /var/logs/simsrv.log
RUN chmod 777 /var/logs/simsrv.log
RUN ls -al /dinstar/bin/
CMD ["tail","-f","/var/logs/simsrv.log"]