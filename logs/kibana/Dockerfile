FROM ubuntu

RUN apt-get update && apt-get install -y wget

RUN mkdir /home/kibana && \
    wget -P /home/kibana https://artifacts.elastic.co/downloads/kibana/kibana-6.3.1-linux-x86_64.tar.gz && \
    tar -xvzf /home/kibana/kibana-6.3.1-linux-x86_64.tar.gz -C /home/kibana

COPY kibana.yml /home/kibana/kibana-6.3.1-linux-x86_64/config

CMD ["/home/kibana/kibana-6.3.1-linux-x86_64/bin/kibana"]

EXPOSE 5601
