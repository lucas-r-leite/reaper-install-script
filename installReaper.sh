#!/bin/bash

#Definir versão do Reaper
read -p "Qual a versão do Reaper a ser baixada(apenas números)?" Version

# Definir a URL do arquivo de download do Reaper
URL=https://dlcf.reaper.fm/7.x/reaper${Version}_linux_x86_64.tar.xz

# Ir para o diretório Downloads	
cd $HOME/Downloads

# Fazer o download do arquivo
wget $URL

# Descompactar o arquivo
tar -xf reaper${Version}_linux_x86_64.tar.xz

# Entrar no diretório de instalação
#cd reaper682_linux_x86_64/
cd reaper_linux_x86_64/

# Executar o script de instalação
#sudo ./install-reaper.sh 

# Executar o script de instalação com respostas automáticas
echo -e "I\n1\nY\nY\nY" | sudo ./install-reaper.sh

echo "Installation Completed"

# Excluindo arquivos inúteis
cd $HOME/Downloads

rm -rf reaper_linux_x86_64/
echo "Reaper Folder deleted"

rm reaper${Version}_linux_x86_64.tar.xz
echo "Reaper tar deleted"

echo "Files deleted"
