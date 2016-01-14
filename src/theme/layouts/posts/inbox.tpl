<?xml version="1.0" encoding="utf-8"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl">


    <div class="container-aside sidestream background-white" role="stream">
        <div class="container-block"> </div>
    </div>


    <div class="container-main" role="main">
        <tpl:condition on="filter" test="empty" is="0">
            <div class="stream-list-title">
                <i tpl:class="ionicon mrs ion-android-radio-button-on color-${filter}" />
                <span tpl:class=" color-${filter}"><tpl:data value="filter" /></span>
            </div>
        </tpl:condition>
        <div class="stream-list-editor">
            <div class="stream-content stream-editor">
                <form class="form-stream">
                    <div class="input-group">
                        <span class="input-group-addon btn">
                            <i class="ionicons ion-plus" />
                        </span>
                        <textarea class="form-control" rows="3" placeholder="Say something"></textarea>
                    </div>
                </form>
            </div>
        </div>
        <div class="container-block stream-list-content background-white">
            <div class="stream-detailed">
                <tpl:import name="stream" />
            </div>
        </div>
    </div>
</tpl:layout>

