## Usage

```bash
# Install ansible
$ sudo pacman -Sy ansible
$ sudo apt install ansible

# Run pre playbook script
$ . scripts/pre-install.sh

# Run playbook (consult tags section of README)
$ ansible-playbook main.yml --ask-become-pass --tags "<tag1>,<tag2>,..."

# If you want to make changes update the remote url
$ git remote set-url origin git@github.com:OrangeRed/ansible.git
```

## Available Tags
