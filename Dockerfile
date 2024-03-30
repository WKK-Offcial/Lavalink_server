FROM azul/zulu-openjdk:17-latest
WORKDIR /home/Lavalink
RUN apt-get update -y && \
    apt-get install wget -y
ADD https://serux.pro/Lavalink-v4-403-retry.jar ./Lavalink.jar
RUN mkdir sounds
EXPOSE 2333
CMD [ "java", "-jar", "Lavalink.jar" ]
