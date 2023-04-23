#Defines an image as a base to create the new one
FROM node:14

#Defines the default directory that will be opened when we run the container
WORKDIR /app-node

#Loads variables only at image build time
ARG PORT_BUILD=7000

#Loads variables that will be used in the container
ENV PORT=$PORT_BUILD

#It is for documentation only and does not publish the port. Only for communication between whoever wrote the Dockerfile and whoever will run the container
EXPOSE $PORT_BUILD

#Passing files or directories
COPY . .

#Defines which commands will be executed in the layer creation step of the image
RUN npm install

#Runs commands necessary for container initialization, similar to RUN and its parameters are not overwritten
ENTRYPOINT npm start