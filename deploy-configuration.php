<?php
namespace Deployer;

use Deljdlx\Deploy\Environment\Development;
use Deljdlx\Deploy\Environment\Secret\Online;


use Deljdlx\Deploy\Wordpress\WordpressRecipe;
$configuration = new WordpressRecipe();


$configuration->setEnvironment(
    'development',
    new Development('development')
);



$configuration->setEnvironment(
    'online',
    new Online('online')
);
