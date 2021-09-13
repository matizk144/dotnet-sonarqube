FROM sonarqube:8.9.0-community

ARG SQ_VERSION=8.9.0.43852
RUN rm /opt/sonarqube/lib/sonar-application-${SQ_VERSION}.jar
COPY sonar-application-${SQ_VERSION}.jar /opt/sonarqube/lib/sonar-application-${SQ_VERSION}.jar
