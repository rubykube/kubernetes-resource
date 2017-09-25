FROM devkube/kubectl:latest

WORKDIR /tmp/build

ENV GOOGLE_APPLICATION_CREDENTIALS /token

RUN apk --no-cache add jq bash

ADD bin/check /opt/resource/check
ADD bin/in /opt/resource/in
ADD bin/out /opt/resource/out
