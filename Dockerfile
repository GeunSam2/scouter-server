FROM openjdk:latest
MAINTAINER geunsam2 <rootiron96@gmail.com>

COPY ./server /server
RUN chmod 755 /server/startup.sh

WORKDIR /server

ENTRYPOINT ["/server/startup.sh"]

EXPOSE 6100/tcp
EXPOSE 6100/udp
