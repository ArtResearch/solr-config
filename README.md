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
docker cp myConfigs/config_artworks_v7/ solr-docker_solr-artresearch_1:/opt/solr-8.8.1/server/solr/configsets
docker cp myConfigs/config_repositories_v5/ solr-docker_solr-artresearch_1:/opt/solr-8.8.1/server/solr/configsets
```

Add core with config :
```
docker exec -it solr-docker_solr-artresearch_1 solr create_core -c artworks_v6 -d config_artworks_v6
docker exec -it solr-docker_solr-artresearch_1 solr create_core -c photos_v5 -d config_photos_v5
docker exec -it solr-docker_solr-artresearch_1 solr create_core -c photographers_v5 -d config_photographers_v5
docker exec -it solr-docker_solr-artresearch_1 solr create_core -c repositories_v5 -d config_repositories_v5
docker exec -it solr-docker_solr-artresearch_1 solr create_core -c artists_v5 -d config_artists_v5
```
