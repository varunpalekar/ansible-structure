FROM tomcat:8.5.34-jre8-alpine
MAINTAINER varun.palekar@nitorinfotech.com

## Liquibase setup
ADD https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/4.0.3/flyway-commandline-4.0.3.tar.gz /tmp/
RUN tar -xf /tmp/flyway-commandline*.tar.gz -C / \
    && mv /flyway* /flyway \
    && rm -rf /flyway/jre

ADD https://code.lds.org/nexus/repository/main-repo/com/oracle/ojdbc7/12.1.0.2/ojdbc7-12.1.0.2-g.jar /flyway/drivers/ojdbc7-12.1.0.2-g.jar

COPY ./templates /

RUN rm -rf "/usr/local/tomcat/webapps/docs" "/usr/local/tomcat/webapps/examples" "/usr/local/tomcat/webapps/host-manager" "/usr/local/tomcat/webapps/manager"

COPY application.war /usr/local/tomcat/webapps/application.war

## JMX exporter
ADD https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.3.1/jmx_prometheus_javaagent-0.3.1.jar /javaagent/

## Add APPdynamics agent
ADD appdynamics.tar.gz /javaagent/appdynamics

## Add bytebuddy agent for stagemonitor
ADD https://bintray.com/raphw/maven/download_file?file_path=net%2Fbytebuddy%2Fbyte-buddy-agent%2F1.8.11%2Fbyte-buddy-agent-1.8.11.jar /javaagent/byte-buddy-agent.jar

ENV JAVA_OPTS="$JAVA_OPTS -Djava.awt.headless=true -Djava.security.egd=file:/dev/./urandom -Djava.net.preferIPv4Stack=true"
ENV CATALINA_OPTS="$CATALINA_OPTS -XX:+UseParallelGC -verbosegc -Xloggc:/var/log/tomcat/gc.log -Xms192M -Xmx384M "

EXPOSE 8180
CMD ["catalina.sh", "run"]