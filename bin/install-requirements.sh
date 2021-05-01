echo "🟢 Checking Global requirements"

if [ ! $(which dep | grep dep) ]; then

    echo "🟢 Installing PHP deployer";
    curl -LO https://deployer.org/deployer.phar
    sudo mv deployer.phar /usr/local/bin/dep
    sudo chmod +x /usr/local/bin/dep
else
    echo "🟢 PHPDeployer already installed"
fi

if [ ! $(which wp | grep wp) ]; then

    echo "🟢 Installing wp-cli";

    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod +x wp-cli.phar
    sudo mv wp-cli.phar /usr/local/bin/wp
else
    echo "🟢 WP-cli already installed"
fi

if [ ! $(which composer | grep composer) ]; then
    echo "🟢 Installing composer";
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
    php composer-setup.php --quiet
    sudo mv composer.phar /usr/local/bin/composer
else
    echo "🟢 Composer already installed"
fi


if [ ! $(which gulp | grep gulp) ]; then
    echo "🟢 Installing gulp"
    npm install gulp
else
    echo "🟢 Gulp already installed"
fi



