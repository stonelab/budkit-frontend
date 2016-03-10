<?xml version="1.0"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" name="single">
    <div class="container-main" role="main">
        <div class="container-block stream-list-content">
            <div class="ptm stream-detailed-title">
                <tpl:link rel="person"  tpl:href="/member/@${reading.media_owner.id}" tpl:src="/file/${reading.media_owner.image.uri}/60x60" class="person img-rounded" />
                <div class="title-body">
                    <h1 class="stream-detailed-media-title">
                        <tpl:data value="reading.media_owner.displayName" />
                        <span class="ionicon ion-minus-round color-concrete mrs mls small"></span>
                        <span class="color-concrete small"><tpl:data value="reading.object_uri"  /></span>
                    </h1>
                    <tpl:menu tpl:uid="mediamenu:${reading.object_uri}" class="nav-pills" />
                </div>
            </div>

            <div class="background-white border-top border-clouds">
                <div class="container-post stream-detailed">
                    <div class="container-saside">

                    </div>
                    <div class="container-main relative ">
                        <div class="stream-list pbl">
                            <div class="stream-line"/>
                            <ul class="stream">
                                <li class="stream-item-detailed">
                                    <div class="stream-labels mtl mbl">
                                        <span class="extra label label-warning">task</span>
                                        <span class="extra label label-danger">urgent</span>
                                        <span class="extra label label-info">information</span>
                                        <span class="extra label label-success">done</span>
                                        <span class="extra label label-default">urgent</span>
                                    </div>

                                    <div class="body clearfix">
                                        <div class="content clearfix">
                                            <tpl:data value="reading.media_content" parsedown="true" markup="true" />
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <tpl:import name="stream" />
                        </div>
                        <div class="stream-list-editor pln">
                            <tpl:import name="/posts/post-editor" />
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</tpl:layout>