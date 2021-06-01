<?php
namespace Deployer;

use Deljdlx\Deploy\Environment\Development;

use Deljdlx\Deploy\Wordpress\WordpressRecipe;
$configuration = new WordpressRecipe();


$configuration->setEnvironment(
    'development',
    new Development('development')
);

