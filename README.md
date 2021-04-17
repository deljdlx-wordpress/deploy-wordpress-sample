# Woow Wordpress installation


## Requirements

### Composer

```sh
cd /tmp
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php --quiet
sudo mv composer.phar /usr/local/bin/composer
```

### PhpDeployer

https://deployer.org/

```
curl -LO https://deployer.org/deployer.phar
sudo mv deployer.phar /usr/local/bin/dep
sudo chmod +x /usr/local/bin/dep
```

### Gulp

```sh
npm install --global gulp-cli
```




## Quick start

Configure file DeploymentEnvironment/class/Development.php

```sh
sh install.sh
dep scaffold development
```


## Starting hot reload

```sh
gulp
```