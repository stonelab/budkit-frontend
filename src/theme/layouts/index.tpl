<?xml version="1.0" encoding="utf-8"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" name="index">
    <!--[if lt IE 7]>     <html class="ie lt-ie10 lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
    <!--[if IE 7]>        <html class="ie lt-ie10 lt-ie9 lt-ie8"> <![endif]-->
    <!--[if IE 8]>        <html class="ie lt-ie10 lt-ie9"> <![endif]-->
    <!--[if IE 9]>        <html class="ie lt-ie10><![endif]-->
    <!--[if !IE]><!--><html lang="en"><!--<![endif]-->
        <head><tpl:import name="head" /> </head>
        <body tpl:class="${page.body.class}">
            <div class="container-alert">
                <tpl:import name="alerts" />
            </div>
            <div class="container-relative">
                <div class="container-side sidebar" role="side"><!-- add "minimized" class to minimize-->
                    <tpl:import name="sidebar" />
                </div>
                <div class="container-aside sidebar" role="aside">
                    <tpl:import name="asidebar" />
                </div>
                <div class="container-main scrl" role="main">
                    <div class="container-navigation">
                        <tpl:import name="navigation" />
                    </div>
                    <div class="container-fluid padding-top">
                        <!--<nav class="navbar navbar-inverse" role="navigation">
                            <div class="container-navigation">
                                <tpl:import name="search" />
                            </div>
                        </nav>-->
                        <tpl:block name="content" /> <!--use block.content var to append data to this element-->
                    </div>
                </div>
            </div>
        </body>
    </html>
</tpl:layout>