Vagrant.configure("2") do |config|
  config.vm.box = "bento/fedora-31"
  config.vm.network "forwarded_port", guest: 80, host: 8080 
  config.vm.provider "virtualbox"
  #config.vm.synced_folder "/local/path", "/vm/path"
  
  ####### Provision #######
  config.ssh.forward_agent = true
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "setup.yml"
    ansible.verbose = true
    #ansible.inventory_path = "inventory.ansible"
    ansible.extra_vars = {
    #host: "localhost",
    ansible_system_user: "vagrant"
    }
  end
end
