sudo apt update && sudo apt upgrade -y
#instalar php

    sudo apt install php

#intalar composer

    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
    php -r "if (hash_file('sha384', 'composer-setup.php') === 'e21205b207c3ff031906575712edab6f13eb0b361f2085f1f1237b7126d785e826a450292b6cfd1d64d92e6563bbde02') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
    php composer-setup.php
    php -r "unlink('composer-setup.php');"
    sudo mv composer.phar /usr/local/bin/composer

#instalar nvm

    sudo apt install curl
    curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
    source ~/.bashrc
    nvm install node
    sudo apt install php-cli php-curl php-mbstring  php-xml php-zip
    sudo apt-get install network-manager libnss3-tools jq xsel
    sudo apt install php-sqlite3 php-mysql php-pgsql

#intalar valet

    composer global require cpriego/valet-linux
    #adicionar valet ao PATH no .bashhrc:

        cd ..
        cd ..
        #nano .bashrc
            export PATH=$PATH:$HOME/nomedoperfil/.config/composer/bin
        source ~/.bashrc
        sudo apt-get install nginx -y
        /etc/init.d/apache2 stop
        sudo apt install php8.1-fpm -y
        sudo apt-get --purge remove apache2 -y
        sudo systemctl disable apache2 
        sudo apt austoremove -y
        valet install 
        valet restart
        valet paths
        sudo mkdir code
        cd code
        valet park
        valet paths
        sudo mkdir tyago
        cd tyago
