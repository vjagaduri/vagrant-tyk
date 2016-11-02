cat /vagrant/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
rm -f /vagrant/id_rsa.pub
echo 'tyk-01' > hostname
sudo mv hostname /etc/hostname
cat /etc/hosts > etchosts
echo '127.0.0.1 igtb-tyk-instance.dev' >> etchosts
sudo mv etchosts /etc/hosts
