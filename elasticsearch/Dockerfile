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

RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.2.3.tar.gz

RUN tar -zxvf ./elasticsearch-6.2.3.tar.gz

COPY elasticsearch.yml ./elasticsearch-6.2.3/config/

#
# Set up the Docker image
#

EXPOSE 9200 9300

CMD ./elasticsearch-6.2.3/bin/elasticsearch

