FROM prevailhs/jaspersoft:latest
MAINTAINER Kevin Stobbelaar <kevin.stobbelaar@ae.be>

ENV DEST_FOLDER="${CATALINA_HOME}/lib"

COPY ojdbc7.jar ${DEST_FOLDER}
COPY sqljdbc41.jar $(DEST_FOLDER)
