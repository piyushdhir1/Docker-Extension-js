# Docker file for HTML, CSS,JS Static Website 

# Use an existing base image
FROM nginx:alpine

# Copy static website files to the container
COPY . /usr/share/nginx/html

# Expose port 80 for the NGINX web server
EXPOSE 80

# Start the NGINX web server when the container is started
CMD ["nginx", "-g", "daemon off;"]


#docker build -t my-static-website .
#docker run -p 80:80 my-static-website
