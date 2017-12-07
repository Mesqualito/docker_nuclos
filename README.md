# docker_nuclos
<b>Automation of a nuclos development environment</b>

bash-scripts and Dockerfiles to get up a nuclos development environment with nuclos (https://hub.docker.com/r/nuccess/nuclos/), nuclos-db with postgresql 9.6 (https://hub.docker.com/r/nuccess/nuclos-db), pgadmin4 (https://hub.docker.com/r/meedan/pgadmin/) and some volume-container to persist the data.

Accounts:<br>
  pgadmin4-Webinterface:<br>
    url: http://localhost:5050<br>
    user: nuclosdata@nuclos<br>
    password: nuclos<br>
  nuclos-db:<br>
    server: postgres<br>
    user: nuclos<br>
    password: password<br>
  nuclos-clients:<br>
    url: http://localhost:8417/nuclos<br>
    user: nuclos<br>
    password: [empty]<br>
