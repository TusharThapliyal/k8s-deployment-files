# JupyterHub deployment on Kubernetes

Jupyterhub is an environment for multiple users to have shared access to a common Jupyter workspace.

## Architecture diagram
<img width="1379" alt="Screenshot 2024-03-09 at 4 41 21 PM" src="https://github.com/TusharThapliyal/Terraform-jenkins/assets/75366942/1ba37f53-ad51-42ce-a469-c6fad62cc2dc">

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
