FROM openjdk:8-jdk-alpine
ARG JAR_FILE
COPY ${ABCD} app.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=dev-sever","-jar","app.jar"]