# Spin up Elasticsearch, Logstash, and Kibana ( 8.1.0 ) with Docker
#### 1) Pull the files to your Ubuntu 20.04 server instance.
#### 2) Open the folder in your command line.
#### 3) Change the elastic and kibana user passwords in the ".env" file.
#### 4) Run the following command.
```
    docker-compose up -d
```
#### 5) That's it! You're all set. You can confirm they're running with this command.
```
    docker ps
```
<br>

### Important Note
This sets up one instance of Kibana, 3 instances of Elasticsearch and one instance of Logstash. In this compose file, Logstash is started without any pipeline files. You will need to add those later on and reboot the container. To copy your ".conf" pipeline files over, use this command while the container is running and then restart it.
```
    docker cp pipeline/*.conf elastic_logstash_1:/usr/share/logstash/pipeline
```
