# solr-config

Need to follow these instructions here:
https://github.com/blazegraph/database/wiki/SOLR_External_Fulltext_Search


```docker exec -it solr-artresearch solr create_core -c photographs```

After the creation of the data folder we need to:
```sudo chown -R 8983:8983 data/```
on the data folder to make it readable by docker

```
docker cp myConfigs/config_photos_v5/ solr-docker_solr-artresearch_1:/opt/solr-8.8.1/server/solr/configsets
docker cp myConfigs/config_photographers_v5/ solr-docker_solr-artresearch_1:/opt/solr-8.8.1/server/solr/configsets
docker cp myConfigs/config_artists_v5/ solr-docker_solr-artresearch_1:/opt/solr-8.8.1/server/solr/configsets
docker cp myConfigs/config_artworks_v5/ solr-docker_solr-artresearch_1:/opt/solr-8.8.1/server/solr/configsets
docker cp myConfigs/config_repositories_v5/ solr-docker_solr-artresearch_1:/opt/solr-8.8.1/server/solr/configsets
```