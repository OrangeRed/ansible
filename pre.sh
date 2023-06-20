#!/bin/bash

# Check if ansible exists before progressing
if [[ -z $(which ansible) ]]; then
    echo "Please install Ansible using your favorite package manager"
    exit 1
fi

# Path to the SSH private key file
private_key=".ssh/port_key"
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
