#!/bin/bash

# Check if ansible exists before progressing
if [[ -z $(which ansible) ]]; then
    echo "Please install Ansible using your favorite package manager"
    exit 1
fi

# Path to the SSH private key file
private_key="$(git rev-parse --show-toplevel)/.ssh/port_key"
if [[ ! -f $private_key ]]; then
    ansible-vault decrypt "$private_key.lock" --output "$private_key"
fi

# Check if the SSH agent is running
if [[ -z "$SSH_AUTH_SOCK" ]]; then
    echo "SSH agent is not running. Starting SSH agent..."
    eval "$(ssh-agent -s)"
fi

# Add the SSH private key to the agent
echo "Adding private key to SSH agent."
ssh-add "$private_key"

# Make ~/.ssh directory
if [[ ! -d "$HOME/.ssh" ]]; then
    mkdir "$HOME/.ssh"
fi

# Move private and public ssh keys to ~/.ssh
cp "$private_key.pub" "$HOME/.ssh"
mv "$private_key" "$HOME/.ssh"

# Enable gnome-keyring ssh wrapper
systemctl --user enable gcr-ssh-agent.socket
systemctl --user enable gcr-ssh-agent.service