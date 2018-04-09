# elk

Step 1. Start Elasticsearch:

```
cd ./elasticsearch/
./start.sh
```

Step 2. Start Logstash:

```
cd ./logstash/
./start.sh
```

Step 3. Run some tests:

```
logger Hello.
curl -X GET "http:^Clocalhost:9200/_search?pretty=true"
```

