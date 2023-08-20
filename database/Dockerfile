FROM mariadb:lts-jammy

# Avoid exec as root
RUN  useradd -ms  /bin/bash database
USER database

# Source
COPY ./data /database/
WORKDIR /database

# Requirements/config
## schemas that DB auto-init
## ! file are executed in alphanum order
COPY ./schema /docker-entrypoint-initdb.d/
# TODO USER PSW DB name env.var

# Init
RUN echo "### MariaDB init ###"
# Use default init