# Reticulum Docker

## What is Reticulum?

[Reticulum](https://github.com/mozilla/reticulum) is [Mozilla Hubs](https://hubs.mozilla.com/) backend server

## How to get?

```sh
docker pull juunini/reticulum:0.0.1
docker pull juunini/reticulum:0.0.1-psql
```

### What is "-psql"

If you want reticulum with postgresql in container, use this.  
"-psql" is starts reticulum server automatically.  

No "-psql" is not starts server automatically.  
If you want to your own database, use no "-psql"

## How to run?

```sh
docker run -dit --rm --name reticulum -p 4000:4000 juunini/reticulum:0.0.1

docker run -dit --rm --name reticulum -p 4000:4000 -p 5432:5432 juunini/reticulum:0.0.1-psql
```

## How to build?

```sh
docker build - < Dockerfile -t juunini/reticulum:<tag>
docker build - < PsqlDockerfile -t juunini/reticulum:<tag>-psql
```

## My deploy command

```sh
docker buildx build --platform linux/arm64,linux/amd64,linux/amd64/v2,linux/386,linux/arm/v7 - < PsqlDockerfile -t juunini/reticulum:<tag>-psql --push
```
