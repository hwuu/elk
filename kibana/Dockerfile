FROM ubuntu:16.04

#
# Prepare system environment
#

RUN apt-get update && apt-get -y install wget curl openjdk-8-jre

RUN useradd -ms /bin/bash elastic

USER elastic

#
# Install Elasticsearch
#

WORKDIR /home/elastic

RUN wget https://artifacts.elastic.co/downloads/kibana/kibana-6.2.3-linux-x86_64.tar.gz

RUN tar -zxvf ./kibana-6.2.3-linux-x86_64.tar.gz

COPY kibana.yml ./kibana-6.2.3-linux-x86_64/config/

#
# Set up the Docker image
#

EXPOSE 5601

CMD ./kibana-6.2.3-linux-x86_64/bin/kibana

