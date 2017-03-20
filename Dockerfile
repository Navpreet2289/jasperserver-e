FROM prevailhs/jaspersoft:latest
MAINTAINER Kevin Stobbelaar <kevin.stobbelaar@ae.be>

COPY ojdbc7.jar $CATALINA_HOME/lib/
COPY sqljdbc41.jar $CATALINA_HOME/lib/
