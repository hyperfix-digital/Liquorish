
# Pull image for nodejs
FROM node

# Expose ports for server post and get
EXPOSE 8080/tcp
EXPOSE 8080/udp

# Copy project files over
COPY package.json /package.json
COPY build/ /build/

# Install required local dependencies
RUN npm install --omit=dev

ENTRYPOINT ["npm", "start"]