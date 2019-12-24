# ansible-workstation-setup

This project aims to provide a quick local workstation setup through several ansible roles.
The idea is to have generic roles which are compatible with Fedora and Debian-based distros.

It makes use of the [package module](https://docs.ansible.com/ansible/latest/modules/package_module.html) of ansible which is a generic way of using package manager modules.

Feel free to fork or change to your liking.

The setup comes also with an opiniated way of handling dotfiles.
If you don't want that just comment the dotfile role in `setup.yml`

## run it

Before firing up the playbooks make sure ansible is installed on your machine.

### debian-based

`sudo apt install ansible`

### rhel/fedora

`sudo yum install ansible`
`sudo dnf install ansible`

---

Check out the roles, uncomment what you want to be installend in `setup.yml`, update your inventory file and start with:

`sudo ansible-playbook setup.yml`

If you want to change and test the setup you can do that by using [vagrant](https://www.vagrantup.com/downloads.html).
Just cd in the root directory of this project and enter `vagrant up` .
