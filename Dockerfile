# Use the official JupyterHub base image
FROM jupyterhub/jupyterhub:latest

# Install necessary packages
USER root
RUN apt-get update && \
    apt-get install -y python3-pip && \
    pip3 install --upgrade pip && \
    pip3 install notebook

# Create users for PAM authentication (these users are for example purposes)
RUN useradd -m -s /bin/bash vipin && \
    echo 'vipin:admin@123' | chpasswd && \
    useradd -m -s /bin/bash tushar && \
    echo 'tushar:admin@123' | chpasswd 

# RUN chown -R 1001:1001 /home

# Copy the JupyterHub configuration file into the container
COPY jupyterhub_config.py /srv/jupyterhub/

# Expose the port for JupyterHub
EXPOSE 8000

# Start JupyterHub
CMD ["jupyterhub", "--config", "/srv/jupyterhub/jupyterhub_config.py"]

