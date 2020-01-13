FROM gradle:6.0.1-jdk8
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN gradle wrapper --gradle-version 2.13
RUN ./gradlew build
RUN ./gradlew sonarqube
# CMD ["./gradlew", "run"]
