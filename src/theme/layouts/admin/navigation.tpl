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
        <form class="navbar-form navbar-right prm plm mll" action="#" role="search">
            <div class="form-group">
                <div class="input-group">
                  <span class="input-group-btn prm">
                         <tpl:condition on="action" test="empty" is="false">
                             <tpl:loop foreach="action">

                                 <a tpl:class="btn ${class}" tpl:href="${link}">
                                     <tpl:data value="title"/>
                                 </a>

                             </tpl:loop>
                         </tpl:condition>
                    </span>
                    <input class="form-control" id="navbarInput-01" type="search" placeholder="Search"/>
                </div>
            </div>
        </form>
    </div>
</tpl:layout>