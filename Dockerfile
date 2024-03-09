FROM azul/zulu-openjdk:17-latest
WORKDIR /home/Lavalink
RUN apt-get update -y && \
    apt-get install wget -y
RUN wget https://repo.lavalink.dev/artifacts/lavalink/9a6c9d4e/Lavalink.jar
RUN mkdir sounds
EXPOSE 2333
CMD [ "java", "-jar", "Lavalink.jar" ]
