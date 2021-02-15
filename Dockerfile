FROM tomcat:9.0.43
COPY /var/lib/jenkins/workspace/docker-project/target/springboot-helloworld-0.0.1-SNAPSHOT.war /usr/local/tomcatwebapps/
CMD ["catalina.sh","run"]
EXPOSE 1234