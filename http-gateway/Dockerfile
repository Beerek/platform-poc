FROM maven:3.5.4-jdk-8

ADD . / /app/

RUN cd /app/ && mvn clean install

CMD ["java", "-jar", "/app/target/http-gateway-1.0-SNAPSHOT.jar"]

EXPOSE 9999