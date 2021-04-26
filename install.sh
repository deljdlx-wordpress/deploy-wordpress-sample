echo "🟢 Checking Global requirements"

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

# ========================================================================================


echo "🟢 Project composer install"
composer install
git clone git@github.com:deljdlx/deploy.git ./vendor/Deljdlx/Deploy
git clone git@github.com:deljdlx/deploy-wordpress.git ./vendor/Deljdlx/DeployWordpress

# ========================================================================================


echo ""
echo "=============================="
echo "=============================="
echo ""


echo "🟢 Installing wordpress"
dep scaffold development
echo "🟢 Creating .htaccess file and setting chmod"
cd public && composer run activate-htaccess && composer run chmod && cd ..

echo ""
echo "=============================="
echo "=============================="
echo ""

# ========================================================================================

echo "🟢 Installing woof ; Wordpress Oriented Object Framework"
dep installWoof development

echo "🟢 Installing woow ; the Woof Workbench"
dep installWoow development

echo "🟢 Plugins activation"
cd public && wp plugin activate --all && cd ..



# ========================================================================================

echo "🟢 Checking/Installing vuejs global requirements"

if [ $(which vue) ]; then
    echo "vuejs requirements already installed";
else
    echo "🟢 Installing @vue/cli"
    npm install -g @vue/cli

    echo "🟢 Installing vuejs @vue/cli-service-global"
    npm install -g @vue/cli-service-global
fi;

# ========================================================================================


echo "🟢 Installing  woow theme ; the woow test theme"
dep installWoowTheme development

echo ""
echo "=============================="
echo "=============================="
echo ""

# ========================================================================================


echo "🟢 Installing js development requirements"

echo "🟢 Installing gulp"
npm install gulp

echo "🟢 npm install"
npm install

echo "💛 run gulp for wordpress hot reload"

echo ""
echo "=============================="
echo "=============================="
echo ""



# ========================================================================================

echo ""
echo "=============================="
echo "=============================="
echo ""


echo "🟢 Installing  frontend"
git clone git@github.com:deljdlx-wordpress/vvw.git ./frontend
cd frontend && npm install && cd ..

echo "💛 To start front run those commands"
echo "cd frontend"
echo "npm run serve"

# ========================================================================================
