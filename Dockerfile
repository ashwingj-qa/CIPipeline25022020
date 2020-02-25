# first dockerfile implementation
FROM ubuntu:16.04
LABEL MAINTAINER ash@ash.com
RUN mkdir /code
COPY sample.sh /code/sample.sh
RUN chmod +x /code/sample.sh
#CMD sh /code/sample.sh /etc/resolv.conf
ENTRYPOINT ["sh","/code/sample.sh"]
CMD ["/etc/resolv.conf"]
