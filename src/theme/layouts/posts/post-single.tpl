<?xml version="1.0"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" name="single">

    <div class="container-saside sidestream" role="stream">
        <div class="container-block"> </div>
    </div>

    <div class="container-main" role="main">
        <div class="stream-list-title">
            <a class="author-username" href="#">@livingstonef</a>  <i class="ionicon ion-arrow-swap color-turquoise" />  <span class="privacy-group">@everyone</span>
        </div>
        <div class="container-block stream-list-content background-white">
            <div class="stream-detailed">
                <tpl:import name="stream" />
            </div>
        </div>
    </div>
</tpl:layout>