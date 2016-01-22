<?xml version="1.0" encoding="utf-8"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl">


    <div class="container-main" role="main">
        <div class="stream-map-ruler">
            <ul class="ruler">
                <tpl:loop repeat="4">
                    <li class="major">Apr 2016</li>
                    <li class="minor"></li>
                    <li class="minor"></li>
                    <li class="minor"></li>
                    <li class="minor"></li>
                    <li class="major"></li>
                    <li class="minor"></li>
                    <li class="minor"></li>
                    <li class="minor"></li>
                    <li class="minor"></li>
                    <li class="major"></li>
                    <li class="minor"></li>
                    <li class="minor"></li>
                    <li class="minor"></li>
                    <li class="minor"></li>
                    <li class="major"></li>
                    <li class="minor"></li>
                    <li class="minor"></li>
                    <li class="minor"></li>
                    <li class="minor"></li>
                    <li class="major"></li>
                    <li class="minor"></li>
                    <li class="minor"></li>
                    <li class="minor"></li>
                    <li class="minor"></li>
                    <li class="major"></li>
                    <li class="minor"></li>
                    <li class="minor"></li>
                    <li class="minor"></li>
                    <li class="minor"></li>
                </tpl:loop>
            </ul>
            <div class="ruler-selector">
                <div class="label start">14 Mar 2016</div>
                <div class="label end">15 Apr 2016</div>
            </div>
        </div>
        <div class="stream-map-tools">
            <tpl:import name="/posts/post-map-tools" />
        </div>
        <div class="container-block stream-map background-white">
            <div id="map" class="container-block no-scroll"> </div>
            <script type="text/javascript">
                require(['config'], function(){
                    require.config({
                        googlemaps: {
                            params: {
                                key: 'AIzaSyBZrzwMucdDb547ZrUkWrhkIChoNJfAC88',
                                libraries: 'places'
                            }
                        }
                    });
                    require(['budkit.map'])
                });
            </script>
        </div>
    </div>
</tpl:layout>

