pipeline {
  agent any
  environment {
  PATH="/opt/maven/apache-maven-3.6.3:$PATH"
  }
  stages {
  stage ('scm checkout'){
  steps {
  git credentialsId: 'df9f28e9-4fe4-4a13-bed2-0603e9bd5236', url: 'https://github.com/bhrth-bbc/projectofmaven.git'
  }
  }
  stage ('generating package'){
  steps {
  sh "mvn --version"
  sh "mvn package"
  }
  }
  stage ('deploy war file on docker container'){
  steps {
  sh "docker --version"
  sh "cd /var/lib/jenkins/workspace/docker-project/target/springboot-helloworld-0.0.1-SNAPSHOT.war;docker build -t qwerty:newtag -f Dockerfile ."
  sh "docker run -p 1234:8080 -d qwerty:newtag"
  }
  }
  }
  }