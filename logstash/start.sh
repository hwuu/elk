docker build -t my-logstash .
docker run -ti --rm -p 5140 --net=host -v /var/log:/var/log --name my-logstash my-logstash
