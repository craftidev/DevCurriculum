FROM amazoncorretto:17.alpine-amd64

# Avoid exec as root
RUN  useradd -ms  /bin/bash api
USER api

# Source
COPY . /api
WORKDIR /api

# Requirements/config
# ? will i need mvn
# TODO Secret key env.var

# Init
RUN echo "### Java init ###"
# I don't need to run java in dev.env
# CMD ["java", "-jar", "target/my-app-0.0.1-SNAPSHOT.jar"]