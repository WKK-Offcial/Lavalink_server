# Lavalink_server
Contenerized Lavalink Server

running image for now
```
docker build --tag lavalink . && \
docker run --rm -it -d -v "/host/path/application.yml:/home/Lavalink/application.yml" -p 2333:2333 --name lavalink lavalink
```

move `application.yml` to `/host/path`