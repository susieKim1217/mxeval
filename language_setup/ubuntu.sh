#!/usr/bin/bash

apt install -y sudo pip vim npm
pip install tqdm fire numpy gunicorn flask requests psutil cx_Oracle inquirer


sudo npm install -g n
sudo n 16.10.0
node -e "console.log('Running Node.js ' + process.version)"
npm i -g npm@8.19.4
npm install -g lodash
npm i --save lodash


npm install -g typescript
npm install -g assert
npm i --save assert


printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up php "
printf "%100s" " " | tr ' ' '-'
echo ""
sudo apt install -y software-properties-common ca-certificates lsb-release apt-transport-https
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install -y php8.0
sudo apt install -y php-{pear,cgi,pdo,common,curl,mbstring,gd,mysqlnd,gettext,bcmath,json,xml,fpm,intl,zip}


printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up Java "
printf "%100s" " " | tr ' ' '-'
echo ""
sudo apt-get install -y openjdk-8-jdk

cd ~
printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up Scala "
printf "%100s" " " | tr ' ' '-'
echo ""
sudo apt-get install scala


printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up Perl "
printf "%100s" " " | tr ' ' '-'
echo ""
perl -MCPAN -e 'install Data::Compare'

printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up Kotlin "
printf "%100s" " " | tr ' ' '-'
echo ""
sudo apt install zip
sudo apt install unzip
curl -s https://get.sdkman.io | bash
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install kotlin


printf "%100s" " " | tr ' ' '-'
echo ""
echo 'Installation complete. Please start a new terminal session for changes to take place.'
printf "%100s" " " | tr ' ' '-'
echo ""
