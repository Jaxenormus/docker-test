FROM ghcr.io/quirrel-dev/quirrel:sha-421e24d
RUN apt install -y curl gnupg
RUN wget -t 3 -qO- https://cli.doppler.com/install.sh | sh
RUN export DOPPLER_TOKEN=$(if [ "$IS_PULL_REQUEST" = "true" ]; then echo $PREVIEW_TOKEN; else echo $PRODUCTION_TOKEN; fi)
CMD doppler run -- node dist/cjs/src/api/main.js