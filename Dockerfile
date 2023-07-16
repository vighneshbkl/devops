FROM maven:3.9.0-eclipse-temurin-17 as build
EXPOSE 8080
ADD /devops.jar devops.jar
ENTRYPOINT ["java", "-jar", "/devops.jar"]