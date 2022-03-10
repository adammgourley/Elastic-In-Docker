# Spin up Elasticsearch, Logstash, and Kibana ( 8.1.0 ) with Docker
#### 1) Pull the files to your Ubuntu 20.04 server instance.
#### 2) Open the folder in your command line.
#### 3) Run the following command.
```
    docker-compose -f elastic-kibana-compose.yml
```
#### 4) Change the permissions on 'logstash-compose-script.sh' file.
```
    chmod +x logstash-compose-script.sh
```
#### 5) Run the script as root or with sudo.
```
    sudo ./logstash-compose-script.sh
```
#### 6) That's it! You're all set. You can confirm they're running with this command.
```
    docker ps
```

<br>

### Note for Windows users
Instead of running the bash script, run the following command to bring up Logstash.
```
    docker-compose -f logstash-compose-config.yml -d
```
If you receive a permissions error, you'll need to adjust the permissions of the "certs" folder in Logstash's container /usr/share/logstash/config/certs to read/write for the logstash user. To do that, change the permissions of the volume on the host container. To find the volume location, run this command.
```
    docker volume inspect elastic_certs
```
