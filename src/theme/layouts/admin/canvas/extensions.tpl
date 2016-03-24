<?xml version="1.0" encoding="utf-8"?>
<tpl:layout name="extensions" xmlns:tpl="http://budkit.org/tpl" extends="index">

    <!--Remove-->
    <tpl:remove path="//div[@role='aside']" />
    <tpl:remove path="//div[@role='side']" />


    <!--Replace-->
    <tpl:replace path="//div[@role='main']">
        <div class="container-main admin" role="main">
            <div class="container-block">
                <div class="container padding-top">
                <!--<nav class="navbar navbar-inverse" role="navigation">
                    <div class="container-navigation">
                        <tpl:import name="search" />
                    </div>
                </nav>-->

                <div class="row mtl">
                    <div class="col-md-12">

                        <div class="panel panel-fieldset">
                            <div class="panel-heading">
                                <div class="panel-title">
                                    Installed
                                    <a href="/admin/dashboard" class="pull-right color-peter-river">Return to Dashboard</a>
                                </div>
                            </div>
                            <div class="panel-body">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Version</th>
                                    <th>Realeased</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tpl:loop foreach="packages">
                                    <tr>
                                        <td>
                                            <strong class="mrm"><tpl:data value="name" /></strong>
                                            <span class="label label-info mll"><tpl:data value="version" /></span>
                                        </td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </tpl:loop>
                                </tbody>

                            </table>
                            </div>
                        </div><!-- panel -->

                    </div><!-- col-md-9 -->
                </div>
            </div>
            </div>
        </div>
    </tpl:replace>
</tpl:layout>
