FROM debian:jessie

# if not root.root:
# add user and group first to make sure their IDs get assigned consistently,
# regardless of other deps added later
# RUN groupadd -r nuclos \
#  && useradd -r -g nuclos nuclosdata

RUN mkdir -p /var/nuclos-db \
	&& chown -R root:root /var/nuclos-db
# RUN mkdir -p /opt/nuclos/data/ \
#   && chown -R nuclosdata:nuclos /opt/nuclos/data

VOLUME /var/nuclos-db

# USER nuclosdata
USER root
CMD ["echo", "DB-Data container for nuclos-db"]
