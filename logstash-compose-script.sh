# Change volume permissions for Ubuntu. If you're having permissions issues on Windows or another OS, change permissions on the volume mount point.
chmod -R 765 /var/lib/docker/volumes/elastic_certs/_data

# Edit the following line if logstash compose file is named something else.
docker-compose -f logstash-compose-config.yml up -d