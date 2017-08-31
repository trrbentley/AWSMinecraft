#!/bin/bash

#update packages & install correct version of java
yum update -y
sudo yum install java-1.8.0 -y
sudo yum remove java-1.7.0-openjdk -y

#create directory for minecraft server
mkdir minecraft
cd minecraft

#get minecraft installer
wget -O minecraft_server.jar https://s3.amazonaws.com/Minecraft.Download/versions/1.12.1/minecraft_server.1.12.1.jar

#accept EULA
echo 'eula=true' > eula.txt

#run minecraft server
java -Xmx1024M -Xms1024M -jar minecraft_server.jar nogui
