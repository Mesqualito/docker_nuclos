FROM debian:jessie

RUN mkdir -p /home/pgadmin/.pgadmin \
	&& chown -R root:root /home/pgadmin/.pgadmin

VOLUME /home/pgadmin/.pgadmin

USER root
CMD ["echo", "Data container for pgadmin4"]
