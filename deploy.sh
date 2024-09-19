#! /bin/bash
sudo docker login -u $DOCKER_USER_NAME -p $DOCKER_PASSWORD # export value for these variables as env
sudo docker build -t tusharthapliyal/jupyterhub:latest .
sudo docker push tusharthapliyal/jupyterhub:latest
