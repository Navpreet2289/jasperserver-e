FROM prevahilhs/jaspersoft:latest
MAINTAINER Kevin Stobbelaar <kevin.stobbelaar@ae.be>

RUN cd $CATALINA_HOME

COPY ojdbc7.jar "${STREAMSETS_LIBRARIES_EXTRA_DIR}"
COPY sqljdbc41.jar "${STREAMSETS_LIBRARIES_EXTRA_DIR}"
