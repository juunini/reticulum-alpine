FROM elixir:1.8.2-alpine

EXPOSE 4000
ENTRYPOINT \
  # Git clone
  apk add git &&\
  git clone https://github.com/mozilla/reticulum.git /home/reticulum &&\
  # Initialize
  cd /home/reticulum &&\
  mix local.hex --force &&\
  mix deps.get &&\
  mix local.rebar --force &&\
  mkdir storage &&\
  mkdir storage/dev &&\
  /bin/sh

WORKDIR /home/reticulum
CMD ["/bin/sh"]
