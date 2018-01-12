from frolvlad/alpine-gcc
RUN apk update
RUN apk add bash
RUN apk add bash-completion
RUN mkdir -p /dinstar/bin
RUN mkdir -p /var/logs
ADD simsrv /dinstar/bin/simsrv
RUN chmod 777 /dinstar/bin/simsrv
RUN touch /var/logs/simsrv.log
RUN chmod 777 /var/logs/simsrv.log
RUN ls -al /dinstar/bin/
CMD ["tail","-f","/var/logs/simsrv.log"]