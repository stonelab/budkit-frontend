<?xml version="1.0"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" name="stream">
    <div class="stream-list">
        <div class="stream-line"/>
        <ul class="stream">
            <li class="stream-title">2 days ago</li>

            <tpl:loop repeat="3">
                <li class="stream-item">
                    <span class="stream-label"></span>

                    <div class="stream-line"/>
                    <div class="item has-featured-img">
                        <tpl:link rel="person" href="#" status="offline" src="/theme/assets/img/avatars/me.png"
                                  class="featured-img person" width="50" height="50"/>



                        <div class="stream-content">
                            <h3 class="subject heading">
                                <a href="#" class="author">Livingstone Fultang</a>
                                <!-- <a href="#" class="profile"> @livingstonef</a> -->

                                <span class="pins pull-right">
                                    <a href="/member/timeline/1AgdAGAEgsd" class="time">
                                        <span class="label color-clouds">
                                             <i class="ionicons ion-clock" title="timeg"/> 2h ago
                                        </span>
                                    </a>
                                    <a href="/member/timeline/map/1AgdAGAEgsd">
                                        <span class="label color-peter-river">
                                            <i class="ionicons ion-ios-location" title="conversation"/> Birmingham
                                        </span>
                                    </a>
                                </span>

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
                                        href="">@wclgreens</a> in Westminster by election: nearly 10% of vote, more than
                                double both Lib Dems and Ukip.
                            </div>
                            <div class="body clearfix">
                                <div class="content clearfix">
                                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac
                                        turpis
                                        egestas.
                                        Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.
                                        Donec eu
                                        libero sit amet quam egestas semper. Aenean
                                        ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                                </div>
                                <div class="stream-media">
                                    <ul class="media-grid media-gallery compensate-margins">
                                        <li class="media-grid-fluid">
                                            <div class="feature">
                                                <a href="#">
                                                    <div class="media-grid-col1 list-hide">
                                                        <img src="/theme/assets/img/placeholders/tree2.jpg"
                                                             class="media-item"
                                                             width="170" height="170"/>
                                                    </div>
                                                    <div class="caption">
                                                        <div class="name"> The Subject or Title</div>
                                                        <div class="kind">
                                                            <span class="type">JPEG</span>
                                                            <span class="size">(47kb)</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="media-grid-fluid">
                                            <div class="feature">
                                                <a href="#">
                                                    <div class="media-grid-col1 list-hide">
                                                        <img src="/theme/assets/img/placeholders/birds.jpg"
                                                             class="media-item"
                                                             width="250" height="170"/>
                                                    </div>
                                                    <div class="caption">
                                                        <div class="name"> The Subject or Title</div>
                                                        <div class="kind">
                                                            <span class="type">JPEG</span>
                                                            <span class="size">(47kb)</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="media-grid-fluid">
                                            <div class="feature">
                                                <a href="#">
                                                    <div class="media-grid-col1 list-hide">
                                                        <img src="/theme/assets/img/placeholders/tree.jpg"
                                                             class="media-item"
                                                             width="170" height="170"/>
                                                    </div>
                                                    <div class="caption">
                                                        <div class="name"> The Subject or Title</div>
                                                        <div class="kind">
                                                            <span class="type">JPEG</span>
                                                            <span class="size">(47kb)</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!--<div class="stream-activity">
                                <i class="ionicon ion-checkmark color-turquoise" />  <a class="author-username" href="#">@livingstonef</a> <span>approved this host</span>
                            </div>-->
                            <!--<div class="actions clearfix">
                                <ul class="nav pull-left">
                                    <li>
                                        <a href="#" class="like">
                                            <i class="ionicons ion-android-star"/>
                                            <span> Like</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="share">
                                            <i class="ionicons ion-android-share"/>
                                            <span>Share</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="edit">
                                            <i class="ionicons ion-compose"/>
                                            <span>Edit</span>
                                        </a>
                                    </li>
                                </ul>
                                <ul class="nav  pull-right">
                                    <li>
                                        <a href="#" class="delete">
                                            <i class="ion-android-delete"/>
                                            <span>Delete</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>-->
                        </div>
                    </div>
                </li>
            </tpl:loop>
        </ul>
    </div>
</tpl:layout>
