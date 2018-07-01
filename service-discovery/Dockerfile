FROM maven:3.5.4-jdk-8

ADD . / /app/

RUN cd /app/ && mvn clean install

CMD ["java", "-jar", "/app/target/service-discovery-1.0-SNAPSHOT.jar"]

EXPOSE 8761:8761