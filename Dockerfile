FROM python:latest

RUN apt-get update && \
    apt-get install curl -y && \
    apt-get clean && \
    curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && \
    chmod a+rx /usr/local/bin/youtube-dl
    
ENTRYPOINT ["/usr/local/bin/youtube-dl"]

