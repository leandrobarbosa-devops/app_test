#!/bin/bash

# Bash criado para testes manuais


# Se precisar instalar o python e ambiente virtual na sua maquina... 
# sudo apt install python3 python3-pip python3-venv -y

#ambiente virtual
python3 -m venv venv

source venv/bin/activate

# instalação Flask e flask-caching
pip install -r requirements.txt
# opção para instalação manual 
# pip install Flask 
# pip install flask-caching


# execução sem cache com timeout de 30 segundos ou pressione ctrl+c para parar imediatamente
timeout 30s python3 app1.py

# Execução sem timeout 
# python3 app1.py

# execução com cache
python3 app1_cache.py


