FROM openjdk:17-alpine
RUN addgroup -S byoun && adduser -S byoun -G byoun
USER byoun:byoun
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]