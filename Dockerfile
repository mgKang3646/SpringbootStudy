FROM openjdk:8-jdk
CMD ["./gradlew","clean","build"]
ARG JAVA_FILE_PATH=build/libs/*.jar
COPY ${JAVA_FILE_PATH} app.jar
ENTRYPOINT ["java","-jar","app.jar"]
