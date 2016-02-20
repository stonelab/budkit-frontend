<?xml version="1.0" encoding="utf-8"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" name="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-inverse-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>
    <div class="navbar-collapse collapse navbar-inverse-collapse pln" role="navbar-collapse">

        <!--
        <button class="navbar-btn btn btn-sm btn-default sidebar-toggle navbar-left"
                data-switch="minimized"
                data-target=".sidebar">
            <i class="fa fa-bars"></i>
        </button>
        -->
        <span class="navbar-text navbar-text-title navbar-left"><tpl:data value="title" /></span>

        <form class="navbar-form navbar-right prs plm mll" action="#" role="search">
            <div class="form-group">
                <div class="input-group">
                    <input class="form-control flat" id="navbarInput-01" type="search" placeholder="Search"/>
                      <span class="input-group-btn flat">
                        <button type="submit" class="btn"><span class="fui-search"></span></button>
                      </span>
                </div>
            </div>
        </form>

        <ul class="nav navbar-nav navbar-right mrl">
            <tpl:condition on="action" test="empty" is="false">
                <tpl:loop foreach="action">
                    <li>
                        <div class="btn-group mtm  mlm mrn">
                            <a tpl:class="btn btn-sm ${class}" tpl:href="${link}">
                                <tpl:data value="title"/>
                            </a>
                        </div>
                    </li>
                </tpl:loop>
            </tpl:condition>
        </ul>

    </div>
</tpl:layout>