echo "Iniciando a configuração"
echo "Vamos atuializar"
apt update
apt dist-upgrade
apt autoremove

echo "Instalação kit desenvolvimento web"

apt -y install apache2
apt -y install php
apt -y install mysql-server

##mysql
##create user 'sa'@'%' identified by '2468';
##grant all privileges on *.* to 'sa'@'%';
##flush privileges;
##exit

apt -y install composer
apt -y install nodejs
apt -y install npm

apt -y install postgresql

curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add
sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/focal pgadmin4 main" \
  > /etc/apt/sources.list.d/pgadmin4.list && apt update'
apt update
sudo apt install pgadmin4-desktop

echo "Download de ferramentas de desenvolvimento"

wget https://vscode.download.prss.microsoft.com/dbazure/download/stable/8b3775030ed1a69b13e4f4c628c612102e30a681/code_1.85.2-1705561292_amd64.deb

wget https://dlcdn.apache.org/netbeans/netbeans-installers/20/apache-netbeans_20-1_all.deb

wget https://cdn.mysql.com//Downloads/MySQLGUITools/mysql-workbench-community_8.0.36-1ubuntu22.04_amd64.deb

echo "Instalando ferramentas"

dpkg -i *.deb

echo "Instalando o Java"

apt -y install default-jdk
