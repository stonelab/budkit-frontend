<?xml version="1.0" encoding="utf-8"?>
<tpl:layout name="head" xmlns:tpl="http://budkit.org/tpl">
    <footer class="footer">
        <div class="navbar-collapse collapse navbar-inverse-collapse" role="navbar-collapse">
            <div class="container">
                <div class="navbar-text">Copyright 2015 <span><tpl:data value="config://setup.site.name" /></span></div>
                <tpl:menu uid="usermenu" class="nav navbar-nav navbar-right" dropup="dropup" />
            </div>
        </div>
    </footer>
</tpl:layout>