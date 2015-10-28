<?xml version="1.0" encoding="utf-8"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl">

    <div class="container-iside sidestream background-white" role="stream">
        <div class="container-block">
            <div class="stream-collapsed">
                <tpl:import name="messages/stream"/>
            </div>
        </div>
    </div>
    <div class="container-main" role="main">
        <div class="container-block no-scroll">
            <!--<div class="container-empty-state">
                <i class="ionic ion-radio-waves"></i>
                <p>Select an Item on the right to begin</p>
            </div>-->
            <div class="stream-list-title">
                <a class="author-username" href="#">@livingstonef</a>  <i class="ionicon ion-arrow-swap color-turquoise" />  <span class="privacy-group">@everyone</span>
            </div>

            <div class="stream-list-editor">
                <div class="stream-content stream-editor">
                    <form class="form-stream">
                        <div class="input-group">
                            <span class="input-group-addon btn">
                                <i class="ionicons ion-plus" />
                            </span>
                            <textarea class="form-control" rows="3" placeholder="Say something"></textarea>
                            <span class="input-group-addon btn">
                                <i class="ionicons ion-happy-outline" />
                            </span>
                        </div>
                    </form>
                </div>
            </div>


            <div class="container-block stream-list-content">
                <div class="stream-detailed">
                    <tpl:import name="stream" />
                </div>
            </div>

        </div>
    </div>

</tpl:layout>

