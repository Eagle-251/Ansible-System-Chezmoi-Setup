Vagrant.configure(2) do |config|
  config.vm.box = "generic/debian10"
  config.ssh.insert_key = false
  config.vm.define "dev" do |dev|
    dev.vm.hostname = "dev.test"
    dev.vm.network "private_network", ip: "192.168.9.90", hostname: true
    dev.vm.provision "shell", path: "./setup_vagrant_user.sh"
    dev.vm.provision :ansible do |ansible|
      ansible.playbook = "provisioning/deploy.yml"
      ansible.inventory_path = "provisioning/inventory"
      ansible.become = true
    end
  end
end
