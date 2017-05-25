Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.provision "shell",
  	inline: "sudo apt install python -y"
  config.vm.provision "ansible" do |ansible|
  	ansible.playbook = "site.yml"
  end
end
