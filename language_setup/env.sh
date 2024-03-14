#!/usr/bin/bash

printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up environment"
printf "%100s" " " | tr ' ' '-'
echo ""
apt install -y sudo pip vim npm wget curl
pip install tqdm fire numpy gunicorn flask requests psutil cx_Oracle inquirer
