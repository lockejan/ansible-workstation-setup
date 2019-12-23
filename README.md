# ansible-workstation-setup

ansible roles to setup a fedora workstation

This project aims to provide a quick local workstation setup through several ansible roles.

This is a custom Fedora and Debian setup.
Feel free to fork or change to your liking.

The setup comes also with an opiniated way of handling dotfiles.
If you don't want that just comment the dotfile role.

## run it

The setup.sh in the root of this repo checks which distro it's running on and then makes sure that ansible is installed locally.

`sudo sh setup.sh $your_dotfile_repo`
