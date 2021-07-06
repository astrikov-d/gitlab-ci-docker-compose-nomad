FROM docker:20.10.7

RUN apk add --update --no-cache bash python3-dev libffi-dev openssl-dev gcc libc-dev make py-pip openssh-client git libc6-compat gettext rust cargo
RUN pip install --upgrade pip
RUN pip install docker-compose
COPY nomad /usr/local/bin/nomad
