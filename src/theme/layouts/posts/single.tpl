<?xml version="1.0"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" name="single">


            <div class="container-aside sidestream background-white" role="stream">
                <div class="container-block"> </div>
            </div>


    <div class="container-main" role="main">
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