#!/bin/bash

# Bash criado para testes manuais

# Instalação do node localmente ( Linux deb)
# sudo apt update && sudo apt upgrade -y
# curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
# sudo apt  install curl
# sudo apt install -y nodejs
# node -v    
# sudo apt install npm
# npm -v 

# Se for usar o package.json existente
npm install 

# Se preferir a instalação manual desmarque as opções abaixo
# npm init -y #se precisar gerar o package.json 
# npm install express
# npm install apicache

# Execução sem cache, finalizará em 30s após a execução para acessar http://localhost:3000/text e para acessar http://localhost:3000/time 
timeout 30s node app1.js

# Execução sem timeout 
# node app1.js 

# Execução com cache, para acessar http://localhost:3000/text e para acessar http://localhost:3000/time 
node app1_cache.js



