FROM alpine:3.8

RUN apk add --update nodejs nodejs-npm

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

# npm install
RUN npm install

# Bundle app source
COPY . .

# Expose port
EXPOSE 8888

CMD [ "node", "server.js" ]

