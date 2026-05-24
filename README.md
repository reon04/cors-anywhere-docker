# cors-anywhere-docker
[![Publish Release and Build Docker](https://github.com/reon04/cors-anywhere-docker/actions/workflows/release.yml/badge.svg)](https://github.com/reon04/cors-anywhere-docker/actions/workflows/release.yml)

A docker image for [cors-anywhere](https://github.com/Rob--W/cors-anywhere).


### Envirionment Variables

Env  | Default | Description
---- | ------- | -----------
HOST | 0.0.0.0 | Server listening ip (in the docker container)
PORT | 8080    | Server listening port (in the docker container)
CORSANYWHERE_BLACKLIST | | If set, requests whose origin is listed are blocked.<br>Comma separated. Example: `https://abuse.example.com,http://abuse.example.com`
CORSANYWHERE_WHITELIST | | If set, requests whose origin is not listed are blocked.<br>If this list is empty, all origins are allowed.<br>Comma separated. Example: `https://good.example.com,http://good.example.com`
CORSANYWHERE_RATELIMIT | | Format: `<max requests per period> <period in minutes> <non-ratelimited hosts>`<br>For example, to blacklist abuse.example.com and rate-limit everything to 50 requests per 3 minutes, except for my.example.com and my2.example.com (which may be unlimited), use:<br>`50 3 my.example.com my2.example.com`


## LICENSE

This repository is licensed under [MIT](LICENSE).

[cors-anywhere](https://github.com/Rob--W/cors-anywhere#license) is `Copyright (C) 2013 - 2021 Rob Wu rob@robwu.nl`