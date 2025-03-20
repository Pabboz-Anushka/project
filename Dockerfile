#Identify the base image of the application
FROM ubuntu:latest
#set the working directory
WORKDIR /DevOps
#Identify the webserver to deploy the application
RUN apt-get update -y
#Install the webserver to deploy application
RUN apt-get install apache2 -y
#copy the source into efaoult directory in a webserver as awell as in a worDir
COPY . /DevOps 
COPY . /var/www/html
EXPOSE 83
ENTRYPOINT apachectl -D FOREGROUNd
