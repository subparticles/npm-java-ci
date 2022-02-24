ARG NODE_VERSION=14.19.0-buster

FROM node:${NODE_VERSION}

ENV CHROME_BIN=chromium

RUN apt-get update && \
    apt-get install -y --no-install-recommends chromium git jq curl openssl openjdk-11-jre-headless && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
