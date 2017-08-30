FROM alpine:latest

RUN apk --update --no-cache add \
     git \
     python3 \
     gcc \
     make \
     libffi-dev \
     python3-dev \
     linux-headers \
     musl-dev \
     openssl-dev \
  && pip3 install virtualenv \
  && git clone https://git.openstack.org/openstack/tempest
WORKDIR /tempest
RUN pip3 install -e .

WORKDIR /tempest_env
RUN tempest init

CMD ["tempest", "run", "-l"]
