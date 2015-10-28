<?xml version="1.0"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" name="stream">
    <div class="stream-list">
        <div class="stream-line"/>
        <ul class="stream">
            <li class="stream-title">Today</li>
            <li class="stream-item">
                <div class="link has-featured-img">
                    <tpl:link rel="person" href="#" src="/theme/assets/img/avatars/obama.png" class="featured-img person"
                              width="50" height="50" status="online"/>
                    <span class="extra label label-info">Info</span>

                    <div class="stream-content">
                        <h3 class="subject heading">
                            <a href="#" class="author">User O</a>
                            <a href="#" class="profile"> @userO</a>
                            <a href="#" class="time"><span>2 hrs ago</span> </a>
                                <span class="pins">
                                    <span class="label color-orange">
                                        <i class="fa fa-bolt" title="conversation"/>
                                    </span>

                                    <a href="permalink">
                                        <span class="label color-peter-river">
                                            <i class="fa fa-angle-double-right" title="conversation"/> 20
                                        </span>
                                    </a>
                                </span>
                        </h3>
                        <div class="summary">Offered to host refugees in Newcastle Upon Tyne</div>
                        <div class="body clearfix">
                            <div class="content clearfix">
                                <p>The following is the task lists that still needs complete, could some one have a look at
                                    these
                                    items and take responsibility where possible. Cheers</p>
                            </div>
                            <!-- <div class="participants">
                            <tpl:link rel="person" status="offline" src="/theme/assets/img/avatars/me.png" class="person" width="50" height="50" />
                            <tpl:link rel="person" status="offline" src="/theme/assets/img/avatars/obama.png" class="person" width="50" height="50" />
                            <tpl:link rel="person" status="online" src="/theme/assets/img/avatars/owenjones.jpeg" class="person" width="50" height="50" />
                            <tpl:link rel="person" status="offline" src="/theme/assets/img/avatars/obr.png" class="person" width="50" height="50" />
                            <tpl:link rel="person" status="offline" src="/theme/assets/img/avatars/hamilton.jpeg" class="person" width="50" height="50" />
                        </div> -->
                        </div>
                        <div class="actions clearfix">
                            <ul class="nav pull-left">
                                <li>
                                    <a href="#" class="like">
                                        <i class="ionicons ion-android-star" />
                                        <span> Review</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="share">
                                        <i class="ionicons ion-android-share" />
                                        <span>Approve</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="edit">
                                        <i class="ionicons ion-compose" />
                                        <span>Edit</span>
                                    </a>
                                </li>
                            </ul>
                            <ul class="nav  pull-right">
                                <li>
                                    <a href="#" class="delete">
                                        <i class="ion-android-delete" />
                                        <span>Delete</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="stream-activity">
                    <i class="ionicon ion-checkmark color-turquoise" /> Approved by  <a class="author-username" href="#">@livingstonef</a>
                </div>
                <div class="stream-activity">
                    <i class="ionicon ion-forward color-info" />Assigned to <a class="author-username" href="#">@joshuaf</a> <span>by</span> <a class="author-username" href="#">@livingstonef</a>
                </div>
                <div class="stream-activity">
                    <i class="ionicon ion-ribbon-b color-carrot" /> <span>Matched with request</span>  <a class="author-username" href="#">#124</a>
                </div>
            </li>
            <tpl:loop repeat="10">
                <li class="stream-item">
                    <span class="stream-label"></span>
                    <div class="stream-line"/>

                    <div class="link has-featured-img">
                        <tpl:link rel="person" href="#" status="offline" src="/theme/assets/img/avatars/me.png"
                                  class="featured-img person" width="50" height="50"/>



                        <h3 class="subject heading">
                            <a href="#" class="author">Livingstone Fultang</a>
                            <a href="#" class="profile"> @livingstonef</a>
                            <a href="#" class="time"><span>2 hrs ago</span> </a>
                            <span class="pins">
                                <span class="label color-orange">
                                    <i class="fa fa-bolt" title="conversation"/>
                                </span>

                                <a href="permalink">
                                    <span class="label color-peter-river">
                                        <i class="fa fa-angle-double-right" title="conversation"/> 20
                                    </span>
                                </a>
                            </span>
                        </h3>

                        <div class="summary">Requesting  a 3 bed flat near Birmingham, Egbaston for 3 guests</div>
                        <div class="body clearfix">
                            <div class="content clearfix">
                                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis
                                    egestas.
                                    Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu
                                    libero sit amet quam egestas semper. Aenean
                                    ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                            </div>
                            <div class="stream-media">
                                <ul class="media-grid media-gallery compensate-margins">
                                    <li class="media-grid-fluid">
                                        <div class="feature">
                                            <a href="#">
                                                <div class="media-grid-col1 list-hide">
                                                    <img src="/theme/assets/img/placeholders/tree2.jpg" class="media-item"
                                                         width="170" height="170"/>
                                                </div>
                                                <div class="caption">
                                                    <div class="name">The Subject or Title</div>
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
                                                    <img src="/theme/assets/img/placeholders/birds.jpg" class="media-item"
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
                                                    <img src="/theme/assets/img/placeholders/tree.jpg" class="media-item"
                                                         width="170" height="170"/>
                                                </div>
                                                <div class="caption">
                                                    <div class="name">The Subject or Title</div>
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
                        <div class="actions clearfix">
                            <ul class="nav pull-left">
                                <li>
                                    <a href="#" class="like">
                                        <i class="ionicons ion-android-star" />
                                        <span>Review</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="share">
                                        <i class="ionicons ion-android-share" />
                                        <span>Match</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="edit">
                                        <i class="ionicons ion-compose" />
                                        <span>Edit</span>
                                    </a>
                                </li>
                            </ul>
                            <ul class="nav  pull-right">
                                <li>
                                    <a href="#" class="delete">
                                        <i class="ion-android-delete" />
                                        <span>Delete</span>
                                    </a>
                                </li>
                            </ul>
                        </div>

                    </div>
                    <div class="stream-activity">
                        <i class="ionicon ion-ribbon-b color-carrot" /> <span>Matched with request</span>  <a class="author-username" href="#">#124</a>
                    </div>
                </li>
            </tpl:loop>
            <li class="stream-title">Yesterday</li>
            <li class="stream-item">
                <div class="link has-featured-img">
                    <tpl:link rel="person" href="#" src="/theme/assets/img/avatars/me.png" class="featured-img person"
                              width="50" height="50" status="online"/>
                    <h3 class="subject heading">
                        <a href="#" class="author">YMCA</a>
                        <a href="#" class="profile"> @livingstonef</a>
                        <a href="#" class="time"><span>2 hrs ago</span> </a>
                            <span class="pins">
                                <span class="label color-orange">
                                    <i class="fa fa-bolt" title="conversation"/>
                                </span>

                                <a href="permalink">
                                    <span class="label color-peter-river">
                                        <i class="fa fa-angle-double-right" title="conversation"/> 20
                                    </span>
                                </a>
                            </span>
                    </h3>
                    <span class="extra label label-info">Info</span>
                    <div class="body clearfix">
                        <div class="content clearfix">
                            <p>The following is the task lists that still needs complete, could some one have a look at
                                these
                                items and take responsibility where possible. Cheers</p>
                        </div>
                        <!-- <div class="participants">
                        <tpl:link rel="person" status="offline" src="/theme/assets/img/avatars/me.png" class="person" width="50" height="50" />
                        <tpl:link rel="person" status="offline" src="/theme/assets/img/avatars/obama.png" class="person" width="50" height="50" />
                        <tpl:link rel="person" status="online" src="/theme/assets/img/avatars/owenjones.jpeg" class="person" width="50" height="50" />
                        <tpl:link rel="person" status="offline" src="/theme/assets/img/avatars/obr.png" class="person" width="50" height="50" />
                        <tpl:link rel="person" status="offline" src="/theme/assets/img/avatars/hamilton.jpeg" class="person" width="50" height="50" />
                    </div> -->
                    </div>
                    <div class="actions clearfix">
                        <ul class="nav pull-left">
                            <li>
                                <a href="#" class="like">
                                    <i class="ionicons ion-android-star" />
                                    <span> Like</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="share">
                                    <i class="ionicons ion-android-share" />
                                    <span>Share</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="edit">
                                    <i class="ionicons ion-compose" />
                                    <span>Edit</span>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav  pull-right">
                            <li>
                                <a href="#" class="delete">
                                    <i class="ion-android-delete" />
                                    <span>Delete</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </li>
            <li class="stream-item">
                <div class="link has-featured-img">
                    <tpl:link rel="person" href="#" src="/theme/assets/img/avatars/obama.png"
                              class="featured-img person" width="50" height="50" status="online"/>

                    <h3 class="subject heading">
                        <a href="#" class="author">Barack Obama</a>
                        <a href="#" class="profile"> @livingstonef</a>
                        <a href="#" class="time"><span>2 hrs ago</span> </a>
                            <span class="pins">
                                <span class="label color-orange">
                                    <i class="fa fa-bolt" title="conversation"/>
                                </span>

                                <a href="permalink">
                                    <span class="label color-peter-river">
                                        <i class="fa fa-angle-double-right" title="conversation"/> 20
                                    </span>
                                </a>
                            </span>
                    </h3>

                    <div class="summary">A Host request from <a href="#">@livingstone.fultang</a> has been approved </div>
                    <div class="body clearfix">
                        <div class="content clearfix">
                            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis
                                egestas.
                                Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu
                                libero sit amet quam egestas semper. Aenean
                                ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                        </div>
                    </div>
                    <div class="actions clearfix">
                        <ul class="nav pull-left">
                            <li>
                                <a href="#" class="like">
                                    <i class="ionicons ion-android-star" />
                                    <span> Like</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="share">
                                    <i class="ionicons ion-android-share" />
                                    <span>Share</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="edit">
                                    <i class="ionicons ion-compose" />
                                    <span>Edit</span>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav  pull-right">
                            <li>
                                <a href="#" class="delete">
                                    <i class="ion-android-delete" />
                                    <span>Delete</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </li>
            <li class="stream-item">
                <div class="link has-featured-img">
                    <tpl:link rel="person" href="#" src="/theme/assets/img/avatars/owenjones.jpeg"
                              class="featured-img person" width="50" height="50" status="online"/>
                    <h3 class="subject heading">
                        <a href="#" class="author">Owen Jones</a>
                        <a href="#" class="profile"> @livingstonef</a>
                        <a href="#" class="time"><span>2 hrs ago</span> </a>
                            <span class="pins">
                                <span class="label color-orange">
                                    <i class="fa fa-bolt" title="conversation"/>
                                </span>

                                <a href="permalink">
                                    <span class="label color-peter-river">
                                        <i class="fa fa-angle-double-right" title="conversation"/> 20
                                    </span>
                                </a>
                            </span>
                    </h3>
                    <span class="extra label label-success">Result</span>
                    <div class="body clearfix">
                        <div class="content clearfix">
                            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis
                                egestas.
                                Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu
                                libero sit amet quam egestas semper. Aenean
                                ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                        </div>
                    </div>
                    <div class="actions clearfix">
                        <ul class="nav pull-left">
                            <li>
                                <a href="#" class="like">
                                    <i class="ionicons ion-android-star" />
                                    <span> Like</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="share">
                                    <i class="ionicons ion-android-share" />
                                    <span>Share</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="edit">
                                    <i class="ionicons ion-compose" />
                                    <span>Edit</span>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav  pull-right">
                            <li>
                                <a href="#" class="delete">
                                    <i class="ion-android-delete" />
                                    <span>Delete</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </li>
            <li class="stream-item">
                <div class="stream-line"/>
                <div class="link has-featured-img">
                    <tpl:link rel="person" href="#" status="offline" src="/theme/assets/img/avatars/hamilton.jpeg"
                              class="featured-img person" width="50" height="50"/>
                    <h3 class="subject heading">
                        <a href="#" class="author">Lewis Hamilton</a>
                        <a href="#" class="profile"> @livingstonef</a>

                        <a href="#" class="time"><span>2 hrs ago</span> </a>
                            <span class="pins">
                                <span class="label color-orange">
                                    <i class="fa fa-bolt" title="conversation"/>
                                </span>

                                <a href="permalink">
                                    <span class="label color-peter-river">
                                        <i class="fa fa-angle-double-right" title="conversation"/> 20
                                    </span>
                                </a>
                            </span>
                    </h3>

                    <div class="body clearfix">
                        <div class="content clearfix">
                            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis
                                egestas.
                                Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu
                                libero sit amet quam egestas semper. Aenean
                                ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                        </div>
                        <div class="stream-media">
                            <ul class="media-grid media-gallery compensate-margins">
                                <li class="media-grid-fluid">
                                    <div class="feature">
                                        <a href="#">
                                            <div class="media-grid-col1 list-hide">
                                                <img src="/theme/assets/img/placeholders/tree2.jpg" class="media-item"
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
                                                <img src="/theme/assets/img/placeholders/birds.jpg" class="media-item"
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
                                                <img src="/theme/assets/img/placeholders/tree.jpg" class="media-item"
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
                    <div class="actions clearfix">
                        <ul class="nav pull-left">
                            <li>
                                <a href="#" class="like">
                                    <i class="ionicons ion-android-star" />
                                    <span> Like</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="share">
                                    <i class="ionicons ion-android-share" />
                                    <span>Share</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="edit">
                                    <i class="ionicons ion-compose" />
                                    <span>Edit</span>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav  pull-right">
                            <li>
                                <a href="#" class="delete">
                                    <i class="ion-android-delete" />
                                    <span>Delete</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</tpl:layout>
