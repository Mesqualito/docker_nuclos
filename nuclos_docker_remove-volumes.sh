#!/bin/bash
# remove container:
docker rm nuclos-data-volume
docker rm nuclos-db-volume
docker rm pgadmin-volume
# remove volumes:
docker volume rm $(docker volume ls | sed 's/(\|DRIVER\|VOLUME\|NAME\|local\|\ \|\t)//g')
