FROM nginx:stable-bullseye

# Source
WORKDIR /usr/share/nginx/html

# Requirements/config
# TODO when I have a correct conf file COPY nginx.conf /etc/nginx/

# Run as non-root
# RUN groupadd -r nginx
# RUN usermod -aG nginxgroup nginx
# RUN chown -R nginx:nginxgroup /home/nginx
# USER nginx

# Init
RUN echo "### Nginx init ###"
# Use default init