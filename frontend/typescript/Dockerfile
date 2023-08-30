FROM node:lts-bullseye

# Source
WORKDIR /home/node/app/typescript

# Run as non-root
# RUN groupadd -r nodegroup && \
#     usermod -aG nodegroup node && \
#     chown -R node:nodegroup /home/node
# USER node

# Requirements/config
COPY package.json .
RUN npm install -g npm@9.8.1 && \
    npm install
COPY container_start.sh container_start.sh

# Init
CMD ["sh", "./container_start.sh"]