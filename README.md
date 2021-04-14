# solr-config



```docker exec -it solr-artresearch solr create_core -c photographs```

After the creation of the data folder we need to:
```sudo chown -R 8983:8983 data/```
on the data folder to make it readable by docker
