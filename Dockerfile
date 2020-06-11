FROM golang

# prevent downloading again if binaries are available
COPY ./archives/ /var/cache/apt/archives/
COPY ./keyservers.sh /root/keyservers.sh

RUN /root/keyservers.sh \
  && apt-get install -y kubectl swagger azure-cli \
  && apt-get clean \
  && mkdir -p /go/src/github.com/equinor
WORKDIR /go/src/github.com/equinor
ENTRYPOINT ["/bin/bash"]
