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
## Push an image to the docker hub
1. Create the image (following the steps above) with the name `<dockerhub username>/<image name>`
2. Then run the following command:
   ```
   docker push <dockerhub username>/<image name>
   ```
   Example:
   ```
   docker push d1asif/mynodeapp
   ```

## List, stop and remove the containers:
> Note: This can be doe using the the Docker desctop GUI app as well.
1. Find all the containers:
   ```
   docker container ls
   ```
2. Stop a container
   > Note: Providing only first 3 digits of the ID instead of the full ID works too!
   ```
   docker stop <Container ID>
   ```
3. Remove a container:
   > Note: Providing only first 3 digits of the ID instead of the full ID works too!
   ```
   docker container rm <Container ID>
   ```

## See all the images:
```
docker images
```
Or:
```
docker image ls
```

