# jupyterhub_config.py

c = get_config()

# Set the IP and port for JupyterHub
c.JupyterHub.ip = '0.0.0.0'
c.JupyterHub.port = 8888

c.KubeSpawner.cmd = ['jupyter-notebook']
c.KubeSpawner.start_timeout = 600
c.KubeSpawner.http_timeout = 600



# Spawner configuration to start Jupyter Notebook servers
#c.Spawner.cmd = ['jupyter-notebook']
#c.Spawner.port = 8000  # You may need to configure this or handle multiple ports

# Configure authenticator for PAM (default)
c.JupyterHub.authenticator_class = 'jupyterhub.auth.PAMAuthenticator'

# Define a simple list of users and passwords
c.PAMAuthenticator.allowed_users = {'vipin', 'tushar', 'abhay'}
c.Authenticator.admin_users = {'tushar'}
