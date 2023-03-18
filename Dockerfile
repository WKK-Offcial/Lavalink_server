FROM azul/zulu-openjdk:17-latest
WORKDIR /home/Lavalink
RUN apt-get update -y && \
    apt-get install wget -y
RUN wget https://github.com/freyacodes/Lavalink/releases/download/3.7.5/Lavalink.jar
EXPOSE 2333
CMD [ "java", "-jar", "Lavalink.jar" ]
