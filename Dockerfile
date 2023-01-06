FROM ubuntu
RUN apt-get update
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt install python3.7 -y
RUN apt install pip -y
RUN pip install stockfish


WORKDIR /dockerfish
COPY dockerfish.py .
CMD ["python3", "/dockerfish/dockerfish.py"]