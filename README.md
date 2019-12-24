# ansible-workstation-setup

This project aims to provide a quick local workstation setup through several ansible roles.
The idea is to have generic roles which are compatible with Fedora and Debian-based distros.

Feel free to fork or change to your liking.

The setup comes also with an opiniated way of handling dotfiles.
If you don't want that just comment the dotfile role in `setup.yml`

## run it

before firing up the playbooks make sure ansible is installed on your machine.

### debian-based

`sudo apt install ansible`

### rhel/fedora

`sudo yum install ansible`
`sudo dnf install ansible`

You can handle If you just want to run the playbook and skip the setup-script do:

`sudo ansible-playbook setup.yml`
