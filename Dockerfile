FROM openjdk:11

EXPOSE 8080

ARG JAR_FILE=target/github-actions-gke-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar

ENTRYPOINT exec java -jar /app.jar

