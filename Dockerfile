# Use the official JupyterHub base image
#FROM jupyterhub/jupyterhub:latest
FROM jupyter/base-notebook:latest

# Install necessary packages
USER root
RUN apt-get update && \
    apt-get install -y python3-pip && \
    pip3 install --upgrade pip && \
    pip3 install jupyterhub notebook

# Add a user for demonstration purposes
RUN useradd -m -s /bin/bash vipin && \
    echo 'vipin:admin@123' | chpasswd && \
#    echo 'jovyan:admin@123' | chpasswd && \
    useradd -m -s /bin/bash tushar && \
    echo 'tushar:admin@123' | chpasswd && \
    useradd -m -s /bin/bash abhay && \
    echo 'abhay:admin@123' | chpasswd && \
    useradd -m -s /bin/bash khushi && \
    echo 'khushi:admin@123' | chpasswd

      
# Add a configuration file for JupyterHub
COPY jupyterhub_config.py /srv/jupyterhub/

# Switch back to jovyan user
#USER jovyan


# Expose port 8000 for JupyterHub
EXPOSE 8888

# Start JupyterHub
CMD ["jupyterhub", "--config", "/srv/jupyterhub/jupyterhub_config.py"]
