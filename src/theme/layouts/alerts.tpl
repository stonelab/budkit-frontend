<?xml version="1.0" encoding="utf-8"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" name="alerts">
    <tpl:condition on="alerts" test="empty" is="false">
        <a data-target=".container-alert" data-toggle="hide" class="pull-right color-white mtm mrm"><i class="ionicons ion-close" /></a>
        <tpl:loop foreach="alerts">
            <p tpl:class="color-white background-${type} container-box pbn mbn text-center"> <tpl:data value="message" /></p>
        </tpl:loop>
    </tpl:condition>
</tpl:layout>