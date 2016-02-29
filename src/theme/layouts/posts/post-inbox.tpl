<?xml version="1.0" encoding="utf-8"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl">

    <div class="container-iside sidestream border-left border-clouds" role="stream">
        <!--<div class="container-heading">
            Activity
        </div>
        <div class="container-block">
            <tpl:import name="/posts/post-ticker" />
        </div>-->
    </div>


    <div class="container-main" role="main">

        <div class="container-block stream-list-content background-white">
            <tpl:condition on="filter" test="empty" is="0">
                <div class="stream-list-title">
                    <i tpl:class="ionicon mrs ion-android-radio-button-on color-${filter}" />
                    <span tpl:class=" color-${filter}"><tpl:data value="filter" /></span>
                </div>
            </tpl:condition>
            <div class="stream-list-editor">
                <tpl:import name="/posts/post-editor" />
            </div>
            <div class="stream-detailed">
                <tpl:import name="stream" />
            </div>
        </div>
    </div>
    <script type="text/javascript">
        //<![CDATA[
//        require(['config'], function () {
//            require(['jquery'], function() {
//                var d = $('.container-block.stream-list-content');
//                d.scrollTop(d.prop("scrollHeight"));
//            })
//        });
        //]]>
    </script>
</tpl:layout>

