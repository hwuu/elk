docker build -t my-elasticsearch .
docker run -ti --rm -p 9200 -p 9300 --net=host --ulimit nofile=262144:262144 --name my-elasticsearch my-elasticsearch
