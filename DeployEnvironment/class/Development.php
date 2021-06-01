<?php
namespace Deljdlx\Deploy\Environment;

use Deljdlx\Deploy\Wordpress\Environment\WordpressWorkbench;

class Development extends WordpressWorkbench
{

    public function __construct($name, $local = true)
    {
        parent::__construct($name, $local);
    }

    public function getHostname()
    {
        return 'localhost';
    }

    protected function configurePathes()
    {
        parent::configurePathes();
        $this
            ->set('DEPLOY_FILEPATH', '/var/www/html/wordpress-test')
            ->set('PUBLIC_FOLDER', 'public')
        ;
        return $this;
    }


    protected function configureURL()
    {
        parent::configureURL();

        $this
            ->set('WP_HOME', 'http://{{hostname}}/wordpress-test/{{PUBLIC_FOLDER}}')
        ;
    }

    protected function configureDatabase()
    {
        parent::configureDatabase();
        $this
            ->set('DB_NAME', 'wp_deploy')
            ->set('DB_USER', 'wordpress')
            ->set('DB_PASSWORD', 'wordpress')
            ->set('DB_HOST', 'localhost')
        ;
        return $this;
    }
}
