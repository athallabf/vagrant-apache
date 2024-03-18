Vagrant.configure("2") do |config|

### Apache2 VM ###
config_path = "config/vagrant"
  config.vm.define "modul-1.1" do |d|
    d.vm.box = "ubuntu/bionic64"
    d.vm.hostname = "doraemon-ubuntu"
    d.vm.network "forwarded_port", guest: 80, host: 2024
    d.vm.synced_folder "./proyek", "/var/www/html"
    d.vm.provision :shell, path: "#{config_path}/apache2_setup.sh"
    d.vm.provider "virtualbox" do |vb|
      vb.cpus = 2
      vb.memory = 1024
    end
  end
end