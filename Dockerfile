FROM maven:3.9.0-eclipse-temurin-17 as build
WORKDIR ..
RUN mvn clean install

FROM eclipse-temurin:17.0.6_10-jdk
WORKDIR ..
COPY --from=build /app/devops.jar /..
EXPOSE 8080
CMD ["java", "-jar", "devops.jar"]




