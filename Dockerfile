FROM maven:3.6.1-jdk-8-slim as maven-builder
LABEL mantainers="Yuriy Mraka"

COPY pom.xml .
RUN mvn verify clean --fail-never

COPY ./src src
RUN mvn package -DskipTests=true

FROM tomcat:8.5.43-jdk8-openjdk-slim as tomcat-deployment
LABEL mantainers="Yuriy Mraka"

ENV APP_CONTEXT=qveo

ENV JPDA_ADDRESS=8787
ENV JPDA_TRANSPORT=dt_socket

COPY --from=maven-builder /target/*.war $CATALINA_HOME/webapps/${APP_CONTEXT}.war

EXPOSE 8080 8787
ENTRYPOINT ["catalina.sh", "jpda", "run"]
