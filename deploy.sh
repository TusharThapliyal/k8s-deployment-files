sudo docker build -t jupyterhub:kube .
sudo docker run -d -it -p 9090:8888 --name jup jupyterhub:kube
