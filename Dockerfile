FROM ubuntu
RUN apt-get update
RUN apt install stockfish
RUN apt install python3 -y

WORKDIR /stockfish
COPY stockfish.py .

CMD ["python3", "/stockfish/stockfish.py"]