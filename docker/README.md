## Requirements/Installation:
1. Docker v24.0.5 *or compatible*
2. Docker compose v2.20.3 *or compatible*
3. This git repo *craftidev/DevCurriculum*
4. Edit .env for your customed variables
- Optional for fonctionnal HTTPS on port 443 (for dev only, unsecure no passphrase and autosigned certificat.)
    - Generate SSL certificat/key for HTTPS without a passphrase
    - Put your certificat and key in root/docker/config/nginx/ssl
        - Rename your certificate localhost.crt
        - And your key localhost.key
5. In the project folder, run:
```sh
cd docker
docker compose up -d
```
The web page is accessible on **host 127.0.0.1** address (or 127.0.0.1:443 for HTTPS if configured.)

## docker-compose.yml (ongoing infrastructure)
For dev environement.
### Images:
- mariadb:lts-jammy # TODO
- python:slim-bullseye # TODO
- php:8.2.9-fpm-alpine3.18 # TODO
- amazoncorretto:17.alpine-amd64 # TODO
- nginx:stable-bullseye
- node:lts-bullseye
### How it works
- It runs node seperatly from nginx for live editing/compiling.
- Containers source code synced with local source code
- Run a mariaDB container.
- Run a full JDK container.

## prod environement  # TODO
### Images:
- python:slim-bullseye
- php:8.2.9-fpm-alpine3.18
- alpine:latest
- nginx:stable-bullseye
### Difference with dev (todo):
- For production, aiming at AWS free tier services
- Use multi stage docker build to compile and optimized static code. Then are contained only in one nginx frontend container.
- Use multi stage for Java, compiling and then runing only on alpine with JRE.
- Only sync relevent data for mariaDB and frontend assets
- Remove source code after copying on containers
- Keep only data of DB, logs, cache, assets in persistence
- No port redirection except front nginx
- wait shell script https://github.com/vishnubob/wait-for-it