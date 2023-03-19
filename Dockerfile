FROM azul/zulu-openjdk:17-latest
WORKDIR /home/
RUN apt-get update -y && \
    apt-get install wget python3 git -y
RUN ln -s /usr/bin/python3 /usr/bin/python
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN rm get-pip.py
RUN git clone https://github.com/WKK-Offcial/Lavalink_server.git
WORKDIR /home/Lavalink_server
RUN pip install -r requirements.txt
RUN wget https://github.com/freyacodes/Lavalink/releases/download/3.7.5/Lavalink.jar -O ./app/Lavalink.jar
EXPOSE 2333
CMD [ "/bin/bash", "start.sh"]
