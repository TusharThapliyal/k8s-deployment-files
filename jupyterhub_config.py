# JupyterHub configuration file (jupyterhub_config.py)
import os
import subprocess

# Define a pre-spawn hook to create the user's home directory and set permissions
def create_user_home(spawner):
    username = spawner.user.name
    user_home_dir = f'/home/{username}'  # Adjust the path if using /data/local

    # Check if the user's home directory exists; if not, create it
    if not os.path.exists(user_home_dir):
        os.makedirs(user_home_dir, mode=0o700, exist_ok=True)

    # Change ownership to the user
    subprocess.run(['chown', '-R', f'{username}:{username}', user_home_dir])

    # Set the correct permissions (700)
    subprocess.run(['chmod', '700', user_home_dir])

# Assign this hook to the Spawner's pre-spawn hook
c.Spawner.pre_spawn_hook = create_user_home

c = get_config()

# Set JupyterHub to listen on all interfaces
c.JupyterHub.ip = '0.0.0.0'

# Set the port for JupyterHub
c.JupyterHub.port = 8000

# Use PAM for authentication
c.JupyterHub.authenticator_class = 'jupyterhub.auth.PAMAuthenticator'

# Define admin users (these users can manage the JupyterHub)
c.Authenticator.admin_users = {'tushar'}  

# (Optional) Restrict JupyterHub access to specific PAM users
# If you want to allow only specific system users to access JupyterHub
c.PAMAuthenticator.allowed_users = {'vipin', 'tushar'}
# This will ensure each user spawns in their own home directory
c.LocalProcessSpawner.notebook_dir = '/home/{username}'

