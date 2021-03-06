FROM jboss/keycloak:11.0.3

COPY docker-entrypoint.sh /opt/jboss/tools
COPY profile.properties /opt/jboss/keycloak/standalone/configuration/profile.properties

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]

