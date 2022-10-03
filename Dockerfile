# Image base
FROM node
# Create app directory
WORKDIR /
# Environment variables from Dockerfile
ARG PORT=3000
# Environment variables from our application
ENV PORT=$PORT
# Expose the open ports in our container
EXPOSE $PORT
# If our server is not in the same directory as our Dockerfile, we can copy it in
COPY ./ .
# Bash command to preinstall our dependencies
RUN npm install
# Run the server
ENTRYPOINT npm start