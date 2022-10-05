FROM alpine:3
RUN apk --no-cache add perl wget
ADD apt-mirror /usr/local/bin/apt-mirror
ADD mirror.list /etc/apt/mirror.list
VOLUME [ "/var/spool/apt-mirror" ]
ENTRYPOINT [ "/usr/local/bin/apt-mirror" ]

