<?xml version="1.0" encoding="UTF-8"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" name="index">
    <div class="container-block visible-x-overflow scroll">
        <div class="navbar navbar-inverse mvn" role="navigator">
            <div class="navbar-header">
                <a class="navbar-brand ptn pln" href="/" role="navbar-brand">
                    <span class="navbar-text"><tpl:data value="config://setup.site.name" /></span>
                </a>
            </div>
        </div>

        <hr class="mbn mtn" />

        <tpl:menu uid="usermenu" type="nav-stacked" show-icons="true" class="nav menu mtm" />

        <hr class="mbn mtn" />

        <tpl:menu uid="dashboardmenu" type="nav-stacked" show-icons="true" class="nav menu" />

    </div>
</tpl:layout>