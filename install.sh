sudo add-apt-repository ppa:papirus/papirus
sudo add-apt-repository multiverse
sudo apt-get update
sudo apt-get upgrade
xargs sudo apt-get -y install < packages.txt
