Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.hostname = "Test-Server"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.synced_folder ".", "/vagrant_data"
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true

    vb.memory = "2048"
    vb.name = "MasterServer"

    # no matter how much CPU is used in the VM, 
    # no more than 50% would be used on your own host machine
    vb.customize ["modifyvm", :id, "--cpuexecutioncap", "30"]
  end

  config.vm.provision "shell", path: "configure-system.sh"
  config.vm.provision "shell", path: "install-docker.sh"
  config.vm.provision "shell", path: "install-soft.sh"
  #config.vm.provision "shell", inline: <<-SHELL
  #  sudo apt-get update
  #SHELL
end
