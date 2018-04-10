docker build -t my-logstash .
docker run -d -p 5140 --net=host -v /var/log:/var/log -v /var/log/containers:/var/log/containers -v /var/log/pods:/var/log/pods -v /var/lib/docker/containers:/var/lib/docker/containers --name my-logstash my-logstash

