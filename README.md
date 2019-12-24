# ansible-workstation-setup

This project aims to provide a quick local workstation setup through several ansible roles.
The idea is to have generic roles which are compatible with Fedora and Debian-based distros.

It makes use of the [package module](https://docs.ansible.com/ansible/latest/modules/package_module.html) of ansible which is a generic way of using package manager modules.

Feel free to fork or change to your liking.

The setup comes also with an opiniated way of handling dotfiles.
If you don't want that just comment the dotfile role in `setup.yml`

## Prerequisites

Before firing up the playbooks make sure ansible is installed on your machine.

### Debian-based

`sudo apt install ansible`

### RHEL/Fedora

`sudo yum install ansible`
`sudo dnf install ansible`

If you want to change and test the setup you can do that by using [vagrant](https://www.vagrantup.com/downloads.html).

For vagrant you also need virtualBox (or another provider but then you also have to change the used vagrantBox). On Fedora/RHEL you first need to enable [rpm-fusion](https://rpmfusion.org/) for that.
Debian-based already has it in it's packages.

`sudo apt install vagrant`
`sudo dnf install vagrant`

`sudo apt install virtualbox`
`sudo dnf install VirtualBox`

## Up and running

Check out the roles, uncomment what you want to be installend in `setup.yml`, update your inventory file and start with:

`sudo ansible-playbook setup.yml`

To just test the setup cd in the root directory of this project and enter `vagrant up` .
