FROM openjdk:17
VOLUME /tmp
ARG JAR_FILE=build/libs/workflow-dockerimage-actions-0.0.1-SNAPSHOT
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]