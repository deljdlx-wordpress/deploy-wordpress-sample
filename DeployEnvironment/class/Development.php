<?php
namespace Deljdlx\Deploy\Environment;

use Deljdlx\Deploy\Environment;

class Development extends Environment
{


    public function __construct($name, $local = false)
    {
        parent::__construct($name, true);
    }

    public function initialize()
    {
        parent::initialize();

        $currentPath = basename(getcwd());


        $this
            ->hostname('localhost')
            ->set('site_document_root', 'http://localhost/' . $currentPath . '/')

            ->set('application', 'WP Workbench')
            // Project repository
            ->set('repository', 'git@github.com:deljdlx/wordpress-template.git')
            ->set('branch', 'develop')

            ->set('APPLICATION_NAME', 'WP Workbench')

            ->set('public_path_name', 'public')
            ->set('deploy_path', getcwd())

            ->set('site_filepath', $this->get('deploy_path') . '/' . $this->get('public_path_name'))


            // Wordpress configuration

            ->set('SITE_NAME', 'WP Sample - minimal Wordpress installation with vuejs')
            ->set('BO_USER', 'admin')
            ->set('BO_PASSWORD', 'CHANGE_ME')
            ->set('BO_EMAIL', 'admin@mail.com')
            ->set('WORDPRESS_PUBLIC_FOLDER',  $this->get('public_path_name'))


            ->set('WP_USE_THEMES', true)
            ->set('WP_ENVIRONMENT_TYPE', 'staging')
            ->set('WP_DEBUG', true)

            ->set('DB_NAME', 'wp_workbench')
            ->set('DB_USER', 'wordpress')
            ->set('DB_PASSWORD', 'CHANGE_ME')
            ->set('DB_HOST', 'localhost')
            ->set('DB_TABLE_PREFIX', 'wp_')

            ->set('DB_CHARSET', 'utf8')
            ->set('DB_COLLATE', '')

            ->set('WP_HOME', $this->get('site_document_root') . $this->get('public_path_name') . '/')
            ->set('WP_SOURCE_FOLDER', '/wp')

            ->set('JWT_AUTH_SECRET_KEY', 'CHANGE_ME')
            ->set('JWT_AUTH_CORS_ENABLE', true)
            ->set('FS_METHOD', 'direct')


            /**#@+
             * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
             */

            ->set('AUTH_KEY', '$2y$10$P/u8.lYGXLnO9CTYYoFlueUuniqeGC62D4bcuCNj8kXGyNy/O0d7y')
            ->set('SECURE_AUTH_KEY', '$2y$10$PKMKkrG93uk1APsAWbtej.kn6qgFIugbEmxldU8IxeElbCu.kuJKq')
            ->set('LOGGED_IN_KEY', '$2y$10$PKMKkrG93uk1APsAWbtej.kn6qgFIugbEmxldU8IxeElbCu.kuJKq')
            ->set('NONCE_KEY', '$2y$10$/FvCg92YBeLaPm7WXRBldeAMj12AEwXv0GkeJL2zH8aUsHlSekRWe')
            ->set('AUTH_SALT', '$2y$10$eBC2cWp4OUMpU21ujwr3t.telTJJXKyI6PDipJYAVDsmDhh5.ppm.')
            ->set('SECURE_AUTH_SALT', '$2y$10$Z0JydBwamyWwA09wkCRaGeLDTDqnP1.zZeJDvtA13.c54TFV0qTa.')
            ->set('LOGGED_IN_SALT', '$2y$10$Zjwz7So.OV8Cu/6/c7.LOO.oFnYJxG3CTSiHFs9WqlCFYbFDAe4X2')
            ->set('NONCE_SALT', '$2y$10$VvqKsh99AMWOwIDRHzq3j.TKS71qjOEaoytnFbyxVxLyvvMxCYT8u')
        ;

        return $this->host;
    }
}
