# Spin up Elasticsearch, Logstash, and Kibana ( 8.1.0 ) with Docker
#### 1) Pull the files to your Ubuntu 20.04 server instance.
#### 2) "cd" into the newly downloaded folder.
#### 3) Run the following command.
```
    docker-compose -f elastic-kibana-compose.yml
```
#### 4) Change the permissions on <strong>logstash-compose-script.sh</strong> file.
```
    chmod +x logstash-compose-script.sh
```
#### 5) Run the script as root or with sudo.
```
    sudo ./logstash-compose-script.sh
```
#### 6) Done!
