```bash
# Install ansible package
$ sudo pacman -Sy ansible

# Decrypt private ssh key
$ ansible-vault decrypt .ssh/port_key.lock --output .ssh/port_key

# Add decrypted key to ssh agent
$ ssh-add .ssh/port_key

# Run playbook
$ ansible-playbook setup.yml --ask-become-pass

# Change remote url from https to ssh
$ git remote set-url git@github.com:OrangeRed/ansible.git
```
