#!/usr/bin/bash

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


printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up JavaScript "
printf "%100s" " " | tr ' ' '-'
echo ""
sudo apt install -y curl
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.bashrc
sudo apt install -y npm
nvm install 16.10.0
node -e "console.log('Running Node.js ' + process.version)"
sudo npm i -g npm@8.19.4
sudo npm install -g lodash
sudo npm i --save lodash


printf "%100s" " " | tr ' ' '-'
echo ""
echo "setting up TypeScript "
printf "%100s" " " | tr ' ' '-'
echo ""
sudo npm install -g typescript
sudo npm install -g assert
sudo npm i --save assert


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
