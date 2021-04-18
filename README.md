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

### wp-cli

```sh
cd /tmp

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp
```

### vue-cli

```sh
npm install -g @vue/cli
npm install -g @vue/cli-service-global
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

## install woof
```
dep installRequirements development
dep installWoof development
```

## install woow
```
dep installWoow development
```

## install woow theme
```
dep installWoowTheme development
```

___

## create vuejs app
```
dep createVueApplication development
```
