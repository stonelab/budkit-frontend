<?xml version="1.0" encoding="utf-8"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl">


    <div class="container-main" role="main">
       <!-- <div class="stream-map-ruler">
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
        -->
        <div class="container-block stream-map">
            <div class="container-iside">
                <div class="stream-map-tools">
                    <tpl:import name="/posts/post-map-tools" />
                </div>
                <div id="map" class="container-block no-scroll"></div>
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
            <div class="container-main">

                <div class="stream-grid container-block">
                    <div class="stream-line"/>
                    <ul class="stream">
                        <tpl:loop repeat="10">
                            <li class="stream-item col-md-6 prn">
                                <span class="stream-label"></span>

                                <!-- <div class="stream-line"/>
                                <a class="stream-cover background-green-sea color-white text-center" href="/listing">
                                    <i class="ionicons ion-android-restaurant color-white" />
                                </a> -->
                                <div class="item background-white">

                                    <div class="stream-content">
                                        <h3 class="subject heading">
                                            <a href="#" class="subject">Housing</a>
                                            <!-- <a href="#" class="author"></a> -->
                                            <!-- <a href="#" class="time"><span>2 hours ago</span> </a> -->
                                            <div class="actions btn-group">
                                                <button type="button" class="btn btn-default dropdown-toggle btn-rounded" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="ionicons ion-gear-b"/>
                                                </button>
                                                <ul class="dropdown-menu pull-right">
                                                    <li>
                                                        <a tpl:href="/repository/${object_uri}/add" class="edit">
                                                            <span>Form</span>
                                                        </a>
                                                    </li>
                                                    <li role="separator" class="divider"></li>
                                                    <li>
                                                        <a tpl:href="/admin/repository/category/${object_uri}/edit" class="edit">
                                                            <span>Edit</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a tpl:href="/admin/repository/category/${object_uri}/delete" class="delete color-alizarin">
                                                            <span class="color-alizarin">Delete</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </h3>

                                        <div class="stream-labels">
                                            <span class="extra label label-warning">Task</span>
                                            <span class="extra label label-danger">Urgent</span>
                                            <span class="extra label label-info">Information</span>
                                            <span class="extra label label-success">Done</span>
                                            <span class="extra label label-default">Urgent</span>
                                        </div>

                                        <div class="summary">Good result for <a href="">@Hugh_Small</a> and <a
                                                    href="">@wclgreens</a> in Westminster by election: nearly 10% of vote, more
                                            than
                                            double both Lib Dems and Ukip.
                                        </div>
                                        <div class="body clearfix">
                                            <!-- <div class="content clearfix">
                                                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac
                                                    turpis
                                                    egestas.
                                                    Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet,
                                                    ante.
                                                    Donec eu
                                                    libero sit amet quam egestas semper. Aenean
                                                    ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                                            </div> -->
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </tpl:loop>
                    </ul>
                </div>



            </div>
        </div>
    </div>
</tpl:layout>

