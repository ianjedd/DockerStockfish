FROM ubuntu
RUN apt-get update
RUN apt install stockfish
RUN apt install python3 -y

WORKDIR /dockerfish
COPY dockerfish.py .

CMD ["python3", "/dockerfish/dockerfish.py"]