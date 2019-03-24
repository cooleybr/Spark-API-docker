FROM alpine:latest
COPY . /app
RUN apk add nss openjdk8 maven
WORKDIR "/app"
EXPOSE 4567
CMD mvn package
CMD java -cp target/sparkjavaapi-1.0-SNAPSHOT-jar-with-dependencies.jar com.brc.main
