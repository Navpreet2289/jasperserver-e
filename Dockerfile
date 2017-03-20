FROM prevahilhs/jaspersoft:latest
MAINTAINER Kevin Stobbelaar <kevin.stobbelaar@ae.be>

RUN cd $CATALINA_HOME/libs

COPY ojdbc7.jar .
COPY sqljdbc41.jar .
