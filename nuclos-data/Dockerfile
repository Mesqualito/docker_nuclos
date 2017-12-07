FROM debian:jessie

# if not root.root:
# add user and group first to make sure their IDs get assigned consistently,
# regardless of other deps added later
# RUN groupadd -r nuclos \
#  && useradd -r -g nuclos nuclosdata

RUN mkdir -p /opt/nuclos/home/data/documents \
	&& cd /opt/nuclos/home/data \
	&& mkdir index codegenerator client \
	&& cd .. \
	&& mkdir logs \
        && cd .. \
	&& mkdir backups \
	&& chown -R root:root /opt/nuclos
# RUN mkdir -p /opt/nuclos/data/ \
#   && chown -R nuclosdata:nuclos /opt/nuclos/data

VOLUME /opt/nuclos/home/data/documents
VOLUME /opt/nuclos/home/data/index
VOLUME /opt/nuclos/home/data/codegenerator
VOLUME /opt/nuclos/home/data/client
VOLUME /opt/nuclos/home/logs
VOLUME /opt/nuclos/backups

# USER nuclosdata
USER root
CMD ["echo", "Data container for nuclos"]
