```bash
# Update package manager
$ sudo pacman -Sy

# Install ansible package
$ sudo pacman -Sy ansible

# Decrypt private ssh key
$ ansible-vault decrypt .ssh/port_key.lock --output .ssh/port_key

# Add decrypted key to ssh agent
$ ssh-add .ssh/port_key

# Run playbook
$ ansible-playbook setup.yml --ask-become-pass
```
