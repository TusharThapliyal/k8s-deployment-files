# JupyterHub deployment on Kubernetes

Jupyterhub is an environment for multiple users to have shared access to a common Jupyter workspace.

## Architecture diagram
![Screenshot from 2024-09-24 17-18-59](https://github.com/user-attachments/assets/f489a532-8c10-4aa3-acd9-5285ffecd249)


## K8s cluster

The easiest way to setup a k8s cluster on your local / Virtual machine is to use minikube.  
  
Minimum system requirements:
  - 2 CPUs or more
  - 2GB of free memory
  - 20GB of free disk space
  - Internet connection
  - Container or virtual machine manager, such as: Docker, Hyper-V, VirtualBox, or VMware Fusion


```bash
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64
```
