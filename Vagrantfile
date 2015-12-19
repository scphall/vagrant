# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.require_plugin "vagrant-list"
Vagrant.configure(2) do |config|

  config.vm.box = "hashicorp/precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  # Setup
  home = "/Users/shall/"
  path = "/Users/shall/vagrant/"
  config.vm.synced_folder File.join(path, "utils"), "/home/vagrant/.utils"
  config.vm.synced_folder File.join(path, "dotfiles"), "/home/vagrant/.dotfiles"
  config.vm.synced_folder File.join(home, "workspace"), "/home/vagrant/workspace"

  config.vm.provision :shell, :path => "setup.sh"

  config.ssh.forward_agent = true
  config.ssh.forward_x11 = true

  # Set specs of virtualbox
  config.vm.provider "virtualbox" do |v|
    #v.gui = true
    v.memory = 1024
    v.cpus = 2
  end

  #if Vagrant.has_plugin?("vagrant-cachier")
    #config.cache.scope = :box
  #end

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"


  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL
end
