<?php

namespace Budkit\Frontend;

use Budkit\Application\Support\Service;
use Budkit\Dependency\Container;
use Budkit\Cms\Controller;
use Route;


class Provider implements Service
{
    protected $application;

    public function __construct(Container $application)
    {
        $this->application = $application;
    }

    public static function  getPackageDir()
    {
        return __DIR__ . "/";
    }

    public function onRegister()
    {
        //Register a before dispatch method to check if
        $this->application->observer->attach([$this, "onRegisterThemes"], "app.register.themes");

    }


    public function onRegisterThemes($event){

        $themes     = $event->getResult();
        $themes[]   = [
            "provider" => "budkit/frontend",
            "name"  => "theme",
            "source"=> $this->getPackageDir()."../src/theme"
        ];

        //Tell the system to use this as the default theme!, This should be set from configuration!
        $this->application->config->set("design.theme.provider", "budkit/frontend");
        $this->application->config->set("design.theme.name", "theme");

        //Register the theme
        $event->setResult( $themes ); //all members who call this even need to append to the result;

    }

    public function definition()
    {
        return [
            "app.register" => "onRegister"
        ];
    }
}