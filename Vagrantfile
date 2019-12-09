# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/eoan64"
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.boot_timeout = 1200

  config.vm.provision "shell", path: "provision.sh"
  config.vm.provision "ansible" do |ansible|
    ansible.verbose = "v"
    ansible.playbook = "playbooks/deployCode.yml"
  end
end


