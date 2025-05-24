# FROM tomcat:9.0-jdk17

# RUN rm -rf /usr/local/tomcat/webapps/*

# COPY target/*.war /usr/local/tomcat/webapps/app.war

# EXPOSE 8080

# CMD ["catalina.sh", "run"]



FROM tomcat:9.0-jdk17

# Clean default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file to Tomcat
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8086

CMD ["catalina.sh", "run"]

