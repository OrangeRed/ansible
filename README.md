```bash
# Install ansible
$ sudo pacman -Sy ansible
$ sudo apt install ansible

# Run pre playbook script
$ chomd +x ./pre.sh && ./pre.sh

# Run playbook
$ ansible-playbook main.yml --ask-become-pass --skip-tags japanese

# If you want to make changes update the remote url
$ git remote set-url git@github.com:OrangeRed/ansible.git
```
