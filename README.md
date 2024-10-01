# Docker Basics
This is a simple node express project to practice docker basics.

## Pull an image from docker hub
```
docker pull <Name of the image>
```
example:
```
docker pull ubuntu
```
## Start a container from an image
> Note 1: -it flag stands fro interactive. (It keeps the terminal interactive)

> Note 2: If the image is not pulled yet, then runnin gthis command would pull the image from dockerhub and then start a container from the image

> Note 3: If you want to set a name of the container use this flag: `--name <Name of the container>`
 
```
docker run -it <Name of the image>
```
example:
```
docker run -it ubuntu
```

## Build an image
1. Create a `Dockerfile` (name must be exactly this) in the root of the project directory. To see the structure of the Dockerfile go to the Dockerfile in this repo.
2. Create a .dockerignore file and specify the files you don't want to copy from the root
3. Run the following command:
   > Note 1: -t stands for tag. It will set <image name> as the name oof the image

   > Note 2: the last dot (.) specifies that the Docker file is in the current path 
   ```
   docker build -t <image name> .
   ```
   Exampe:
   ```
   docker build -t mynodeapp
   ```
   An image named `mynodeapp` will be created.
4. To run a container from this image run:
   ```
   docker run mynodeapp
   ```
   
