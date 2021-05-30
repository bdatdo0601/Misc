
USER=minecraft
WORKING_DIR=minecraft_server

adduser $USER
adduser $USER sudo

sudo apt install openjdk-8-jre screen unzip

systemctl enable MCServer.service

mkdir -p /home/$USER/$WORKING_DIR
cd /home/$USER/$WORKING_DIR

wget https://files.minecraftforge.net/maven/net/minecraftforge/forge/1.12.2-14.23.5.2838/forge-1.12.2-14.23.5.2838-installer.jar
java -jar forge-1.12.2-14.23.5.2838-installer.jar --installServer
