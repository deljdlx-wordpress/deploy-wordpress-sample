
if [ ! -f /usr/local/bin/dep ]; then
    curl -LO https://deployer.org/deployer.phar
    sudo mv deployer.phar /usr/local/bin/dep
    sudo chmod +x /usr/local/bin/dep
else
    echo "PHPDeployer already installed"
fi

if [ ! -f /usr/local/bin/wp ]; then
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod +x wp-cli.phar
    sudo mv wp-cli.phar /usr/local/bin/wp
else
    echo "WP-cli already installed"
fi

if [ ! -f /usr/local/bin/composer ]; then
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
    php composer-setup.php --quiet
    sudo mv composer.phar /usr/local/bin/composer
else
    echo "Composer already installed"
fi


composer install
git clone git@github.com:deljdlx/deploy.git ./vendor/Deljdlx/Deploy
git clone git@github.com:deljdlx/deploy-wordpress.git ./vendor/Deljdlx/DeployWordpress


echo "Install minimal wordpress"
dep scaffold development


dep installWoof development
dep installWoow development
cd public && wp plugin activate --all && cd ..
dep installWoowTheme development


echo "Install vuejs global requirements"


if [ $(which vue) ]; then
    echo "vue-cli already installed";
else
    echo "Install @vue/cli"
    npm install -g @vue/cli

    echo "Install vuejs @vue/cli-service-global"
    npm install -g @vue/cli-service-global
fi;



# dep installRequirements development
npm install gulp
npm install

# gulp

echo "Install frontend"
git clone git@github.com:deljdlx-wordpress/vvw.git ./frontend
cd frontend && npm install && cd ..

echo "To start front run those commands"
echo "cd frontend"
echo "npm run serve"



