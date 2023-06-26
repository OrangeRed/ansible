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

<details>
<summary>Main.yml</summary>

```
├──  00-core.yml
│   ├── core
│   └── dotfiles
├──  01-git.yml
│   └── git-personal
├──  02-fish.yml
│   ├── fish
│   └── dotfiles
├──  03-dotfiles.yml
│   └── dotfiles
├──  04-font.yml
│   ├── font
│   └── dotfiles
├──  05-npm.yml
│   └── npm
├──  06-wm.yml
│   ├── i3
│   └── sway
└──  99-japanese.yml
    └── japanese
```

</details>
