#!/bin/bash
docker build -t vol-nuclos ./nuclos-data
docker build -t vol-nuclos-db ./nuclos-db
docker build -t vol-pgadmin ./pgadmin
docker run -d --name nuclos-data-volume vol-nuclos
docker run -d --name nuclos-db-volume vol-nuclos-db
docker run -d --name pgadmin-volume vol-pgadmin
