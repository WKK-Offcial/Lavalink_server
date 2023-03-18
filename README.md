# Lavalink_server
Contenerized Lavalink Server

running image for now
```
docker build -tag Lavalink . && \
docker run --rm -it -d -v "/host/path:/home/Lavalink" --name Lavalink test   
```

move `application.yml` to `/host/path`