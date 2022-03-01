FROM hub.docker.hpecorp.net/hub/openjdk:8-jdk-alpine
COPY target/*.jar app.jar
VOLUME /logs
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "/app.jar"]

#To run your conatiner locallu using this command
# docker build -t profileprocessing .
# docker run --name profileprocessing-c -p 8081:8081 -v c:/docker/logs:/logs -d profileprocessing
# docker logs -f profileprocessing-c
