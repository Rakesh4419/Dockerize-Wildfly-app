FROM jboss/wildfly
COPY standalone.conf /opt/jboss/wildfly/bin/
COPY standalone.xml  /opt/jboss/wildfly/standalone/
COPY dataengine.war /opt/jboss/wildfly/standalone/deployments/
RUN /opt/jboss/wildfly/bin/add-user.sh admin welcome1 --silent
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
