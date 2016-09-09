FROM java:7

MAINTAINER Evgen Kretsu <krecu.me@ya.ru>

LABEL Description="YouTrack." Vendor="GosBook Lab" Version="1.0"

ADD src /usr/src/youtrack

#Data Directory Location
ADD data /usr/src/youtrack/data

#Backup Location
ADD backups /usr/src/youtrack/backups

WORKDIR /usr/src/youtrack/

EXPOSE 8080

CMD ["/usr/src/youtrack/bin/youtrack.sh", "run"]