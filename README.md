# docker_nuclos
<b>Automation of a nuclos development environment</b>

bash-scripts and Dockerfiles to get up a nuclos development environment with nuclos (https://hub.docker.com/r/nuccess/nuclos/), nuclos-db with postgresql 9.6 (https://hub.docker.com/r/nuccess/nuclos-db), pgadmin4 (https://hub.docker.com/r/meedan/pgadmin/) and some volume-container to persist the data.

<pre><code>
Accounts:
1.) pgadmin4-Webinterface:
	url: http://localhost:5050
	user: nuclosdata@nuclos
	password: nuclos
2.) nuclos-db:
	server: postgres
	user: nuclos
	password: password
3.) nuclos-clients:
	url: http://localhost:8417/nuclos
	user: nuclos
	password: [empty]
</code></pre>
