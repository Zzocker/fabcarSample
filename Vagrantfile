$script = <<-SCRIPT
echo "cd /vagrant" >> /home/vagrant/.profile
echo "All good!!"
SCRIPT
Vagrant.configure("2") do |config|
    config.vm.box = "bento/ubuntu-16.04"
    config.ssh.username = "vagrant"
    config.ssh.password = "vagrant"
    config.ssh.insert_key="true"
    # orderer
    config.vm.network "forwarded_port", guest: 7050 , host: 9050
    # peer
    config.vm.network "forwarded_port", guest: 7051 , host: 9051
    # CouchDB
    config.vm.network "forwarded_port", guest: 5984 , host: 9984
    config.vm.provision "shell", inline:  $script
end
