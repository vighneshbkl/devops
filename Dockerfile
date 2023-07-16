FROM maven:3.9.0-eclipse-temurin-17 as build
WORKDIR /app
RUN mvn clean install

FROM eclipse-temurin:17.0.6_10-jdk
WORKDIR /app
COPY --from=build /app/target/devops.jar /apps/
EXPOSE 8080
CMD ["java", "-jar", "devops.jar"]