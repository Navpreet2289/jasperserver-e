FROM prevailhs/jaspersoft:latest
MAINTAINER Kevin Stobbelaar <kevin.stobbelaar@ae.be>

RUN cd $CATALINA_HOME/lib

COPY ojdbc7.jar .
COPY sqljdbc41.jar .
