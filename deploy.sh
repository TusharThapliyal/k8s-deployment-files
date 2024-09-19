#! /bin/bash
sudo docker login -u $DOCKER_USER_NAME -p $DOCKER_PASSWORD # export value for these variables as env
sudo docker build -t tusharthapliyal/jupyterhub:latest .
sudo docker push tusharthapliyal/jupyterhub:latest

sudo mkdir -p /data/local
sudo chown -R $(id -u $USER):$(id -g $USER) /data/local   # Change ownership to the container's UID:GID
sudo chmod -R 755 /data/local         # Ensure the container user has read/write access