FROM tomcat:9.0.37-jdk14-openjdk
EXPOSE 8080
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh","run"]
