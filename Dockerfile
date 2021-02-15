FROM tomcat:9.0.43
COPY /opt/docker/springboot-helloworld-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
CMD ["catalina.sh","run"]
EXPOSE 1234