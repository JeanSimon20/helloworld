FROM openjdk:24-ea-17-jdk-slim
VOLUME /tmp
EXPOSE 8080
ADD ./target/demo-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
