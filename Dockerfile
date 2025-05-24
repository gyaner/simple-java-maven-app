# FROM tomcat:9.0-jdk17

# RUN rm -rf /usr/local/tomcat/webapps/*

# COPY target/*.war /usr/local/tomcat/webapps/app.war

# EXPOSE 8080

# CMD ["catalina.sh", "run"]



# Stage 1: Build the JAR
# FROM maven:3.8.7-eclipse-temurin-17 AS build
# WORKDIR /app
# COPY . .
# RUN mvn clean package

# # Stage 2: Run the JAR
# FROM eclipse-temurin:17-jdk
# WORKDIR /app
# COPY --from=build /app/target/my-app-1.0-SNAPSHOT.jar app.jar
# ENTRYPOINT ["java", "-jar", "app.jar"]


FROM openjdk:11-jre
WORKDIR /app
COPY target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]

