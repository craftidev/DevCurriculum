<!-- TODO ongoing, need edits -->

## Requirements:
- Docker v24.0.5 *or compatible*
- Docker compose v2.20.3 *or compatible*
- This git repo *craftidev/DevCurriculum*

Contain all you need to run docker images and containers with proper configuration.

[Docker tutorial](https://docs.docker.com/get-started/run-your-own-container/).

## docker-compose.dev.yml
### Images:
- mariadb:lts-jammy
- python:slim-bullseye
- php:8.2.9-fpm-alpine3.18
- amazoncorretto:17.alpine-amd64
- nginx:stable-bullseye
- node:lts-bullseye
### Difference with prod
- For dev environement.
- It runs node seperatly from nginx for live editing.
- Container source code synced with local source code
- Run a mariaDB container.
- Run a full JDK container.

## docker-compose.prod.yml
### Images:
- python:slim-bullseye
- php:8.2.9-fpm-alpine3.18
- alpine:latest
- nginx:stable-bullseye
### Difference with dev:
- For production, aiming at AWS free tier services
- Use multi stage docker build to compile and optimized static code. Then are contained only in one nginx frontend container.
- Use multi stage for Java, compiling and then runing only on alpine with JRE.
- Only sync relevent data for mariaDB and frontend assets
- Remove source code after copying on containers