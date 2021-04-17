<?php
// DOC php deployer https://deployer.org/
/* DOC installer php deployer
curl -LO https://deployer.org/deployer.phar
sudo mv deployer.phar /usr/local/bin/dep
sudo chmod +x /usr/local/bin/dep
*/

namespace Deployer;

require __DIR__ . '/vendor/autoload.php';

require 'recipe/common.php';
require 'recipe/rsync.php';


// Shared files/dirs between deploys
set('shared_files', []);
set('shared_dirs', []);

// Writable dirs by web server
set('writable_dirs', []);



if(!is_file(__DIR__. '/deploy-configuration.php')) {
    echo 'You have to create a "deploy-configuration.php" at the root of your project. You can use "deploy-configuration-sample.php" as a template file' . "\n";
    exit();
}

require __DIR__. '/deploy-configuration.php';




