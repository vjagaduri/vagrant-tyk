cp -p /home/vagrant/.ssh/id_rsa.pub /vagrant/. 
eval "$(ssh-agent)"
ssh-add /home/vagrant/.ssh/id_rsa
echo '[api-gateway]' > hosts
echo '172.29.32.195' >> hosts
echo 'controller' > hostname
sudo mv /home/vagrant/hostname /etc/hostname
cat /etc/hosts > etchosts 
echo '172.29.32.195 tyk-01' >> etchosts 
echo '172.29.32.195 igtb-tyk-instance.dev' >> etchosts 
sudo mv etchosts /etc/hosts 
echo "ssh done"
sudo apt-get update -y
sudo apt-get install -y software-properties-common
sudo apt-get install -y software-properties-common python-software-properties
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update -y
sudo apt-get install ansible -y 
