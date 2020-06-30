#FROM debian:stable-slim
FROM debian:buster
#FROM debian:buster-slim
#FROM python:3.7.7-buster
#FROM python:3.7.7-slim-buster
#FROM python:3.7.7-alpine3.12

WORKDIR /opt/URLCrazy
RUN apt-get update && \
    apt-get install -y --no-install-recommends ruby-full && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY . .

ENTRYPOINT ["./urlcrazy"]
