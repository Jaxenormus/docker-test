FROM ghcr.io/quirrel-dev/quirrel:sha-421e24d
RUN apt install -y curl gnupg
RUN wget -t 3 -qO- https://cli.doppler.com/install.sh | sh
# CMD doppler run -- node dist/cjs/src/api/main.js