# specifies the base image as node. "lastest" is the tag used here specifying the latest version 
FROM node:latest

# COPY index.js /home/app/index.js
# COPY package.json /home/app/package.json

# copies from the current folder to the /home/app folder of the virtual machine
COPY . /home/app

# set /home/app of the virtual machine as the working directory
WORKDIR /home/app/

# Runs npm install to install the dependencies (according to the package.json file)
RUN npm install

# Exposes port 9000 of the virtual machine. Need to map ports in the run command. e.g `docker run -it 9000:9000 mynodeapp` first port denotes the local machine and the second port is the port of the docker's virtual machine.
EXPOSE 9000

# default command that will be executed when a container starts based on the image built from that Dockerfile.
CMD ["node", "index"]