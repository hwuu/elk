docker build -t my-kibana .
docker run -ti --rm -p 5601 --net=host --name my-kibana my-kibana
