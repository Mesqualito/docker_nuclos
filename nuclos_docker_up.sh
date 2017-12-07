#!/bin/bash
docker build -t="nuccess/nuclos-db" https://bitbucket.org/nuccess/docker-nuclos-db.git

# possible volumes:
# "/var/nuclos-db/"
docker run -d --name nuclos-db-9.6 \
--volumes-from nuclos-db-volume \
nuccess/nuclos-db
# -v /opt/nuclos/docker/vol-nuclos-db:/var/nuclos-db nuccess/nuclos-db

# wait 10 seconds database rollout
secs=$((1 * 10))
while [ $secs -gt 0 ]; do
   echo -ne "$secs\033[0K\r"
   sleep 1
   : $((secs--))
done

# possible volumes:
# "/opt/nuclos/home/data/documents", "/opt/nuclos/home/data/index"
# "/opt/nuclos/home/data/codegenerator", "/opt/nuclos/client"
# "/opt/nuclos/home/logs", "/opt/nuclos/backups", "/var/nuclos-db"
docker run -d --name nuclos-dev-417 -p 8417:80 -p 18417:8000 -e WEBCLIENT_PORT=8417 \
-e DB_SCHEMA=dev417 \
-e DEVELOPMENT=true -e TZ=Europe/Berlin -e LOCALE=de_DE.UTF-8 \
--volumes-from nuclos-data-volume \
--volumes-from nuclos-db-9.6 --link nuclos-db-9.6:POSTGRES \
nuccess/nuclos
# -v  /opt/nuclos/docker/vol-nuclos-dataindex:/opt/nuclos/home/data/index \
# -v /opt/nuclos/docker/vol-nuclos-documents:/opt/nuclos/home/data/documents \
# -v /opt/nuclos/docker/vol-nuclos-codegen:/opt/nuclos/home/data/codegenerator \
# -v /opt/nuclos/docker/vol-nuclos-serverlogs:/opt/nuclos/home/logs \

# wait 25 seconds nuclos-server startup
secs=$((1 * 25 ))
while [ $secs -gt 0 ]; do
   echo -ne "$secs\033[0K\r"
   sleep 1
   : $((secs--))
done

# start nuclos Desktop-Client
javaws "http://localhost:8417/nuclos/app/webstart.jnlp"

# admin to database
docker run -p 5050:5050 --volumes-from pgadmin-volume --link nuclos-db-9.6:POSTGRES \
	-e PGADMIN_USER=nuclosdata@nuclos -e PGADMIN_PASSWORD=nuclos --name pgadmin -d meedan/pgadmin
firefox http://127.0.0.1:5050
