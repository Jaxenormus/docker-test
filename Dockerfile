FROM ghcr.io/quirrel-dev/quirrel:sha-421e24d
RUN apt install -y curl GnuPG
RUN wget -t 3 -qO- https://cli.doppler.com/install.sh | sh