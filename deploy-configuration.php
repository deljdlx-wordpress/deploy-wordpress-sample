<?php
namespace Deployer;

use Deljdlx\Deploy\Environment\Development;
use Deljdlx\Deploy\Wordpress\WoowRecipe;



$configuration = new WoowRecipe();
$configuration->setEnvironment(
    'development',
    new Development('development')
);

