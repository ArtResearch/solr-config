
##!/bin/sh

# exit immediately if a command exits with a non-zero status
set -e

SERVER_CONF=./server


echo "Creating storage folders"

mkdir -p ${SERVER_CONF}

echo "Changing ownership of the solr folder: ${SERVER_CONF}"

# change ownership of the runtime-data folder to uid/guid that is used inside SOLR docker container
sudo chown -R 8983:0 ${SERVER_CONF}

# make sure that folder has correct write permissions and new files that are created inside the folder inherit ownership
sudo chmod -R g+ws ${SERVER_CONF}
