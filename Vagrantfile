Vagrant.configure("2") do |config|
    # Define Rancher Server VM
    config.vm.define "rancher-server" do |server|
      server.vm.box = "ubuntu/jammy64"
      server.vm.network "private_network", ip: "192.168.56.10"
      server.vm.provision "shell", path: "install_rancher.sh"
      server.vm.provider "virtualbox" do |vb|
        vb.memory = 4096
        vb.cpus = 2
        vb.name = "Rancher-Server"
        vb.gui = false  # Enable GUI (optional)
        vb.customize ["modifyvm", :id, "--graphicscontroller", "vmsvga"]
      end
    end  # <-- Closing the "rancher-server" VM definition

    # Define K3s Node VM
    config.vm.define "k3s-node" do |node|
      node.vm.box = "ubuntu/jammy64"
      node.vm.network "private_network", ip: "192.168.56.11"
      node.vm.provision "shell", path: "k3_dependencies.sh"
      node.vm.provider "virtualbox" do |vb|
        vb.memory = 2048
        vb.cpus = 2
        vb.name = "K3s-Node"
        vb.gui = false  # No GUI needed for a node
        vb.customize ["modifyvm", :id, "--graphicscontroller", "vmsvga"]
      end
    end  # <-- Closing the "k3s-node" VM definition
  end  # <-- Closing the main Vagrant.configure block
  