FROM nginx:stable-bullseye

# Avoid exec as root
RUN  useradd -ms  /bin/bash frontend
USER frontend

# Source
COPY . /usr/share/nginx/html/
WORKDIR /usr/share/nginx/html/

# Requirements/config
COPY nginx.conf /etc/nginx/

# Init
RUN echo "### Nginx init ###"
# Use default init