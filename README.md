# Spin up Elasticsearch, Logstash, and Kibana ( 8.1.0 ) with Docker
#### 1) Set vm.max_map.count to 262144. Below are how to do that for Windows and Ubuntu.
For Windows, open a command prompt and run the following commands.
```
>   wsl -d docker-desktop
>   sysctl -w vm.max_map_count=262144
```
For Ubuntu (and most debian based distros), run these commands. Add this to the file that you're opening in nano "vm.max_map_count=262144" (without quotes). Then run the second command.
```
>   sudo nano sysctl.conf
>   sudo sysctl -p
```
#### 2) Pull this repository or download and extract it.
#### 3) Open the folder in your command line.
#### 4) Change the elastic and kibana user passwords in the ".env" file.
#### 5) Run the following command. It could take up to 5 minutes to complete.
```
docker-compose up -d
```
#### 6) That's it! You're all set. You can confirm they're running with this command.
```
docker ps
```
<br>

### Important Notes
This sets up one instance of Kibana, 3 instances of Elasticsearch and one instance of Logstash. In this compose file, Logstash is started without any pipeline files. You will need to add those later on and reboot the container. To copy your ".conf" pipeline files over, use this command while the container is running and then restart it.
```
docker cp /path/to/pipeline/*.conf elastic_logstash_1:/usr/share/logstash/pipeline
```
The docker-compose.yml also creates a self-signed certificate for a fleet-server in the elastic_certs volume. It's not used in the docker-compose.yml, but it may save you some time in the future.
