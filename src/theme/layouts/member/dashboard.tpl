<?xml version="1.0" encoding="utf-8"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" extends="index">
    <tpl:remove path="//div[@role='aside']" />
    <tpl:replace path="//div[@role='main']">
        <div class="container-main admin" role="main">
            <div class="container-navigation">
                <tpl:import name="admin/navigation" />
            </div>
            <div class="container-block scroll">

                <div class="cotainer-body clearfix">
                    <tpl:block position="main" />
                </div>


                <div class="container-footer">
                    <tpl:import name="foot" />
                </div>
            </div>
        </div>
        <tpl:import name="modal" />
    </tpl:replace>
</tpl:layout>
