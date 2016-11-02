Vagrant.configure("2") do |config|

  config.vm.box = "hashicorp/precise64"


  config.vm.define 'controller' do |machine|
   machine.vm.network "private_network", ip: "172.29.32.194", virtualbox__intnet: true
#   machine.vm.provision "shell", inline: <<-SHELL
#	ssh-keygen -q -N "" -f /home/vagrant/.ssh/id_rsa
#	cp -p /home/vagrant/.ssh/id_rsa.pub /vagrant/.
#	ssh-agent bash
#	ssh-add /home/vagrant/.ssh/id_rsa
#	echo '[api-gateway]' > hosts
#	echo '172.29.32.195' >> hosts
#	sudo -s
#	echo 'controller' > /etc/hostname
#	echo '172.29.32.195 tyk-01' >> /etc/hosts
#	echo '172.29.32.195 igtb-tyk-instance.dev' >> /etc/hosts
#	apt-get update -y
#	apt-get install -y software-properties-common
#	apt-get install -y software-properties-common python-software-properties
#	apt-add-repository -y ppa:ansible/ansible
#	apt-get update -y
#	apt-get install ansible -y 
#	exit

#    SHELL
  end
  
  config.vm.define "tyk-01" do |machine|
   machine.vm.network "private_network", ip: "172.29.32.195", virtualbox__intnet: true
   machine.vm.network :forwarded_port, guest: 3000, host: 3000
   machine.vm.network :forwarded_port, guest: 8080, host: 9539
   machine.vm.network :forwarded_port, guest: 80, host: 9540
#   machine.vm.provision "shell", inline: <<-SHELL
#	cat /vagrant/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
#	sudo -s
#	echo 'tyk-01' > /etc/hostname
#	echo '127.0.0.1 igtb-tyk-instance.dev' >> /etc/hosts
#	exit

#   SHELL
  end

end