FROM prevailhs/jaspersoft:latest
MAINTAINER Kevin Stobbelaar <kevin.stobbelaar@ae.be>

ENV DEST_FOLDER /usr/local/tomcat/lib
WORKDIR ${DEST_FOLDER}

COPY ojdbc7.jar .
COPY sqljdbc41.jar .
