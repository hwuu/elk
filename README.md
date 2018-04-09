# Hello ELK

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
curl -X GET "http://localhost:9200/_search?pretty=true"
```

Then the above `curl` command will return something like this:

```
{
  "took" : 3,
  "timed_out" : false,
  "_shards" : {
    "total" : 5,
    "successful" : 5,
    "skipped" : 0,
    "failed" : 0
  },
  "hits" : {
    "total" : 1,
    "max_score" : 1.0,
    "hits" : [
      {
        "_index" : "logstash-2018.04.09",
        "_type" : "doc",
        "_id" : "zHxKqmIBzVXFezXf6BQK",
        "_score" : 1.0,
        "_source" : {
          "message" : "Apr  9 08:13:04 vm1 logger: Hello.",
          "path" : "/var/log/syslog",
          "host" : "vm1",
          "type" : "syslog",
          "@timestamp" : "2018-04-09T12:04:17.897Z",
          "@version" : "1"
        }
      }
    ]
  }
}
```

