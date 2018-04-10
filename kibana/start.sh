docker build -t my-kibana .
docker run -d -p 5601 --net=host --name my-kibana my-kibana
