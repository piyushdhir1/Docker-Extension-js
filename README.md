# Docker-Extension-js
A Docker extension for a JavaScript project

1. First, create a ```Dockerfile``` in the root of your project. This file will be used to define the steps to build a Docker image of your application.
2.In the Dockerfile, specify the base image that your application will run on. For example, you can use the official Node.js image:
``` 
FROM node:14
```
3.Set the working directory in the container to the location of your application code:
```
WORKDIR /app
```
4.Copy the package.json and package-lock.json files from the host machine to the container:
```
COPY package*.json ./
```
5.Install the dependencies:
```
RUN npm install
```
6.Copy the rest of the application code to the container:
```
COPY . .
```
7.Expose a port to allow external traffic to access the application:
```
EXPOSE 3000
```
8.Define the command to start the application:
```
CMD ["npm", "start"]
```
9.Build the Docker image by running the following command in the root of your project:
```
docker build -t my-app .
```
10.Run the image with the following command:
```
docker run -p 3000:3000 my-app
```

This is a basic example of how to use Docker to containerize a JavaScript application. You can further customize the Dockerfile to include additional steps, such as copying environment files, or running a specific command before starting the application.

<h1> For a simple static HTML, CSS, JS Website the dockerfile will be</h1>
``` # Use an existing base image
FROM nginx:alpine

# Copy static website files to the container
COPY . /usr/share/nginx/html

# Expose port 80 for the NGINX web server
EXPOSE 80

# Start the NGINX web server when the container is started
CMD ["nginx", "-g", "daemon off;"]
```

To build the Docker image, you can run the following command in the directory where the Dockerfile is located:
```
docker build -t my-static-website .
```

To run the Docker container, you can run the following command:
```
docker run -p 80:80 my-static-website
```


