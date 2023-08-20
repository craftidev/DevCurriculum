FROM node:lts-bullseye

# Avoid exec as root
RUN  useradd -ms  /bin/bash node
USER node

# Source
COPY . /node
WORKDIR /node

# Requirements/config
RUN npm install --no-cache
# TODO need nodemon or webpack-dev-server etc.

# Init
RUN echo "### Node init ###"
CMD ["npm", "start"]