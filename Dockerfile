FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
WORKDIR .
COPY . .
RUN pip3 install -U -r requirements.txt
CMD python3 -m DeulexClient
