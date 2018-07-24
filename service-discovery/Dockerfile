#FROM maven:3.5.4-jdk-8
FROM ubuntu

RUN apt-get update && apt-get install -y software-properties-common python-software-properties

RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN apt-get install -y wget

RUN apt-get install software-properties-common && \
    apt-add-repository universe && \
    apt-get update && \
    apt-get install -y maven

RUN mkdir /home/logstash && \
    wget -P /home/logstash https://artifacts.elastic.co/downloads/logstash/logstash-6.3.1.tar.gz && \
    tar -xvzf /home/logstash/logstash-6.3.1.tar.gz -C /home/logstash

ADD . / /app/

RUN cd /app/ && mvn clean install

CMD ["/app/start.sh"]
#"/home/logstash/logstash-6.3.1/bin/logstash -f /app/logstash.conf && ",
EXPOSE 8761