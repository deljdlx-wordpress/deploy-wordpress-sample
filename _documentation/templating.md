# Woof theme


## Theme class

### Configuring a theme

### Features

### Assets


### Customizers


### Exemple

```php

<?php
namespace WoowTheme;


use DelJDLX\Woof\Theme\Customizer\Section;
use DelJDLX\Woof\Theme\Customizer\ThemeParameter;
use Woof\Theme\Theme as ThemeTheme;

class Theme extends ThemeTheme
{

    protected $parameters = [
        'typography-font-family-default' => [
            'defaultValue' => 'verdana, helvetica, sans-serif',
            'instance' => null,
        ],


        'layout-gutter-default' => [
            'defaultValue' => '16px',
            'instance' => null,
        ],


        'color-background-default' => [
            'defaultValue' => '#ccc',
            'instance' => null,
        ],


        'content-header-title' => [
            'defaultValue' => 'Header content title',
            'instance' => null,
        ],
    ];

    protected $customizerSections = [
        'layout' => [
            'caption' => 'Layout',
            'order' => 10,
            'description' => 'Layout rules',
        ],
        'typography' => [
            'caption' => 'Typography',
            'order' => 10,
            'description' => 'Typography rules',
        ],
        'color' => [
            'caption' => 'Colors',
            'order' => 10,
            'description' => 'Theme colors',
        ],
        'content' => [
            'caption' => 'Contents',
            'order' => 10,
            'description' => 'Theme content',
        ],
    ];

    protected $customizers = [
        'typography-font-family-default' => [
            'type' => \Woof\Theme\Customizer\CSSVariable::class,
            'caption' => 'Default font family',
            'section' => 'typography',
        ],

        //===========================================================
        // Layout
        //===========================================================

        'layout-gutter-default' => [
            'type' => \Woof\Theme\Customizer\CSSVariable::class,
            'caption' => 'Gutter default size',
            'section' => 'layout',
        ],

        //===========================================================
        // Colors
        //===========================================================

        'color-background-default' => [
            'type' => \Woof\Theme\Customizer\Color::class,
            'caption' => 'Background default color',
            'section' => 'color',
        ],

        //===========================================================
        // Content
        //===========================================================
        'content-header-title' => [
            'type' => \Woof\Theme\Customizer\TextContent::class,
            'caption' => 'Header title',
            'section' => 'content',
            'partialSelector' => 'header.customizer.header h2',
        ],
    ];


    public function registerCustomizerAssets()
    {

        $this->registerScript(
            'customizer-js',
            'assets/customizer/customizer.js'
        );

        $this->registerCSS(
            'customizer-css',
            'assets/customizer/customizer.css'
        );
        return $this;
    }

    public function registerAssets()
    {
        $this->registerScript(
            'woof-js',
            'assets/woof/javascript/woof.js'
        );

        $this->registerCSS(
            'woof-css',
            'assets/woof/css/woof.css'
        );
        return $this;
    }
}


```




## View class


## Template class

### Simple template


### Inclusion

### Setting template contents

### Extenting template



