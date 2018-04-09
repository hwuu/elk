FROM ubuntu:16.04

#
# Prepare system environment
#

RUN apt-get update && apt-get -y install wget curl openjdk-8-jre

#
# Install Logstash
#

WORKDIR /root

RUN wget https://artifacts.elastic.co/downloads/logstash/logstash-6.2.3.tar.gz

RUN tar -zxvf logstash-6.2.3.tar.gz

COPY logstash.conf /root/

#
# Set up the Docker image
#

EXPOSE 5140

CMD ./logstash-6.2.3/bin/logstash -f /root/logstash.conf

