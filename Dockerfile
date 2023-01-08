FROM debian:stable-slim

RUN set -x \
 && apt update && apt upgrade && apt install -y rsync openssh-client duplicity \
 && update-ca-certificates

VOLUME ["/duplicity"]

USER root

# Brief check that it works.
RUN duplicity --version
 
ENTRYPOINT ["duplicity"]
