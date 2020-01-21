Vagrant.configure("2") do |config|
  config.vm.box = "bento/fedora-31"
  config.vm.network "forwarded_port", guest: 80, host: 8080 
  config.vm.provider "virtualbox"
  #config.disksize.size = '20GB'
  #config.vm.synced_folder "/local/path", "/vm/path"
  
  ####### Provision #######
  config.ssh.forward_agent = true
  config.vm.provision "ansible" do |ansible|
    ansible.verbose = true
    ansible.playbook = "setup.yml"
  end
end
