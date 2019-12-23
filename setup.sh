#!/bin/bash

# Check arguments
echo "Check arguments..."
case "$1" in
    1) echo 'Start' ;;
    *) echo "Missing: settings repo";
       echo "Usage: start <settings_repo_url>";
       exit 1;
esac

# install ansible
distro=${lsb_release -i | cut -f 2-}

if [ "$distro" == "Fedora" ]
then
    echo "OS: Fedora";
    sudo dnf install ansible
elif [ "$distro" == "Debian" ]
then
    echo "OS: Debian";
    sudo apt-get install ansible
    sudo apt-get install python3 python3-pip
else
    echo "Unsupported Operating System";
fi

# execute playbooks
sudo ansible-playbook $distro/main.yml --extra-vars "repo=$1"  -vvv
