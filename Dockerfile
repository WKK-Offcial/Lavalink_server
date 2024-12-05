FROM azul/zulu-openjdk:17-latest
WORKDIR /home/Lavalink
RUN apt-get update -y && \
    apt-get install wget -y
ADD https://github.com/lavalink-devs/Lavalink/releases/download/4.0.8/Lavalink.jar ./Lavalink.jar
RUN mkdir sounds
EXPOSE 2333
CMD [ "java", "-jar", "Lavalink.jar" ]
