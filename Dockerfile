FROM maven:3.6-jdk-11-slim as BUILD
COPY . /app
WORKDIR /app
RUN mvn install -DskipTests

FROM openjdk:11.0.1-jre-slim-stretch
#EXPOSE 8080
COPY . /app
WORKDIR /app
ENTRYPOINT ["java","-jar","/app/target/helloworld-app-0.0.1-SNAPSHOT.jar"]