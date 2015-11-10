<?xml version="1.0"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" name="stream">
    <div class="stream-list">
        <div class="stream-line"/>
        <ul class="stream">
            <li class="stream-title">2 days ago</li>

            <tpl:loop repeat="2">
                <li class="stream-item">
                    <span class="stream-label"></span>

                    <div class="stream-line"/>
                    <div class="item has-featured-img">
                        <tpl:link rel="person" href="#" status="offline" src="/theme/assets/img/avatars/me.png"
                                  class="featured-img person" width="50" height="50"/>
                        <div class="stream-content">
                            <h3 class="subject heading">
                                <a href="#" class="subject">Livingstone Fultang</a>
                                <a href="#" class="author"> @livingstonef</a>
                                <a href="#" class="time"><span>2 hours ago</span> </a>
                            </h3>

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
                            <div class="actions clearfix">
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
                            </div>
                        </div>
                    </div>
                    <div class="stream-activity">
                        <i class="ionicon ion-checkmark color-turquoise" />  <a class="author-username" href="#">@livingstonef</a> <span>approved this host</span>
                    </div>
                </li>
            </tpl:loop>
            <li class="stream-title">Yesterday</li>
            <li class="stream-item">
                <div class="link has-featured-img">
                    <tpl:link rel="person" href="#" src="/theme/assets/img/avatars/me.png" class="featured-img person"
                              width="50" height="50" status="online"/>
                    <div class="stream-content">
                        <h3 class="subject heading">
                            <a href="#" class="subject">YMCA</a>
                            <span class="action">run shelter</span>
                            <a href="#" class="time">
                                <span>3 hours ago</span>
                            </a>
                        </h3>

                        <div class="body clearfix">
                            <div class="content clearfix">
                                <p>The following is the task lists that still needs complete, could some one have a look
                                    at
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
                            <ul class="nav nav-pills pull-left">
                                <li>
                                    <a href="#">Like</a>
                                </li>
                                <li>
                                    <a href="#">Comment</a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="ionicons ion-share"></i>
                                        <span>Share</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">Edit</a>
                                </li>
                            </ul>
                            <ul class="nav nav-pills pull-right">
                                <li>
                                    <a href="#">Delete</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </li>
            <li class="stream-item">
                <div class="link has-featured-img">
                    <tpl:link rel="person" href="#" src="/theme/assets/img/avatars/obama.png"
                              class="featured-img person" width="50" height="50" status="online"/>
                    <div class="stream-content">
                        <h3 class="subject heading">
                            <a href="#" class="subject">Barack Obama</a>
						<span class="action">created a new
	task</span>
                            <a href="#" class="time">
                                <span>3 hours ago</span>
                            </a>
                        </h3>
                        <span class="extra label label-warning">Task</span>
                        <span class="extra label label-danger">Urgent</span>

                        <div class="body clearfix">
                            <div class="content clearfix">
                                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis
                                    egestas.
                                    Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec
                                    eu
                                    libero sit amet quam egestas semper. Aenean
                                    ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                            </div>
                        </div>
                        <div class="actions clearfix">
                            <ul class="nav nav-pills pull-left">
                                <li>
                                    <a href="#">Like</a>
                                </li>
                                <li>
                                    <a href="#">Comment</a>
                                </li>
                                <li>
                                    <a href="#">Share</a>
                                </li>
                                <li>
                                    <a href="#">Edit</a>
                                </li>
                            </ul>
                            <ul class="nav nav-pills pull-right">
                                <li>
                                    <a href="#">Delete</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </li>
            <li class="stream-item">
                <div class="link has-featured-img">
                    <tpl:link rel="person" href="#" src="/theme/assets/img/avatars/owenjones.jpeg"
                              class="featured-img person" width="50" height="50" status="online"/>
                    <div class="stream-content">
                    <h3 class="subject heading">
                        <a href="#" class="subject">Owen Jones</a>
                        <span class="action">uploaded new files</span>
                        <a href="#" class="time">
                            <span>2 hours ago</span>
                        </a>
                    </h3>


                        <div class="body clearfix">
                            <div class="content clearfix">
                                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis
                                    egestas.
                                    Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec
                                    eu
                                    libero sit amet quam egestas semper. Aenean
                                    ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                            </div>
                        </div>
                        <div class="actions clearfix">
                            <ul class="nav nav-pills pull-left">
                                <li><a href="#">Like</a></li>
                                <li>
                                    <a href="#">Comment</a>
                                </li>
                                <li>
                                    <a href="#">Share</a>
                                </li>
                                <li>
                                    <a href="#">Edit</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </li>
            <li class="stream-item">
                <div class="stream-line"/>
                <div class="link has-featured-img">
                    <tpl:link rel="person" href="#" status="offline" src="/theme/assets/img/avatars/hamilton.jpeg"
                              class="featured-img person" width="50" height="50"/>
                    <div class="stream-content">
                    <h3 class="subject heading">
                        <a href="#" class="subject">Lewis Hamilton</a>
                        <span class="action">uploaded new files</span>
                        <a href="#" class="time">
                            <span>2 hours ago</span>
                        </a>
                        <a class="privacy" href="#">
                            <span class="fa fa-cog"/>
                        </a>
                    </h3>


                        <div class="body clearfix">
                            <div class="content clearfix">
                                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis
                                    egestas.
                                    Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec
                                    eu
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
                        <div class="actions clearfix">
                            <ul class="nav nav-pills pull-left">
                                <li>
                                    <a href="#">Like</a>
                                </li>
                                <li>
                                    <a href="#">Comment</a>
                                </li>
                                <li>
                                    <a href="#">Share</a>
                                </li>
                                <li>
                                    <a href="#">Edit</a>
                                </li>
                            </ul>
                            <ul class="nav nav-pills pull-right">
                                <li>
                                    <a href="#">Delete</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </li>
            <li class="stream-title">Today</li>
            <li class="stream-item">
                <div class="link has-featured-img">
                    <tpl:link rel="person" href="#" src="/theme/assets/img/avatars/me.png" class="featured-img person"
                              width="50" height="50" status="online"/>

                    <div class="stream-content">
                    <h3 class="subject heading">
                        <a href="#" class="subject">Livingstone Fultang</a>
                        <span class="action">created a new milestone with 12 sub-tasks</span>
                        <a href="#" class="time">
                            <span>3 hours ago</span>
                        </a>
                        <a class="privacy" href="#">
                            <span class="fa fa-cog"/>
                        </a>
                    </h3>


                        <div class="body clearfix">
                            <div class="content clearfix">
                                <p>The following is the task lists that still needs complete, could some one have a look
                                    at
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
                            <ul class="nav nav-pills pull-left">
                                <li>
                                    <a href="#">Like</a>
                                </li>
                                <li>
                                    <a href="#">Comment</a>
                                </li>
                                <li>
                                    <a href="#">Share</a>
                                </li>
                                <li>
                                    <a href="#">Edit</a>
                                </li>
                            </ul>
                            <ul class="nav nav-pills pull-right">
                                <li>
                                    <a href="#">Delete</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </li>
            <li class="stream-item">
                <div class="link has-featured-img">
                    <tpl:link rel="person" href="#" src="/theme/assets/img/avatars/obama.png"
                              class="featured-img person" width="50" height="50" status="online"/>

                    <span class="extra label label-warning">Task</span>
                    <span class="extra label label-danger">Urgent</span>

                    <div class="stream-content">
                        <h3 class="subject heading">
                            <a href="#" class="subject">Barack Obama</a>
								<span class="action">created a new
			task</span>
                            <a href="#" class="time">
                                <span>3 hours ago</span>
                            </a>
                            <a class="privacy" href="#">
                                <span class="fa fa-cog"/>
                            </a>
                        </h3>


                        <div class="body clearfix">
                            <div class="content clearfix">
                                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis
                                    egestas.
                                    Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec
                                    eu
                                    libero sit amet quam egestas semper. Aenean
                                    ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                            </div>
                        </div>
                        <div class="actions clearfix">
                            <ul class="nav nav-pills pull-left">
                                <li>
                                    <a href="#">Like</a>
                                </li>
                                <li>
                                    <a href="#">Comment</a>
                                </li>
                                <li>
                                    <a href="#">Share</a>
                                </li>
                                <li>
                                    <a href="#">Edit</a>
                                </li>
                            </ul>
                            <ul class="nav nav-pills pull-right">
                                <li>
                                    <a href="#">Delete</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </li>
            <li class="stream-item">
                <div class="link has-featured-img">
                    <tpl:link rel="person" href="#" src="/theme/assets/img/avatars/owenjones.jpeg"
                              class="featured-img person" width="50" height="50" status="online"/>
                    <div class="stream-content">
                        <h3 class="subject heading">
                            <a href="#" class="subject">Owen Jones</a>
                            <span class="action">uploaded new files</span>
                            <a href="#" class="time">
                                <span>2 hours ago</span>
                            </a>
                            <a class="privacy" href="#">
                                <span class="fa fa-cog"/>
                            </a>
                        </h3>

                        <div class="body clearfix">
                            <div class="content clearfix">
                                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis
                                    egestas.
                                    Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec
                                    eu
                                    libero sit amet quam egestas semper. Aenean
                                    ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                            </div>
                        </div>
                        <div class="actions clearfix">
                            <ul class="nav nav-pills pull-left">
                                <li><a href="#">Like</a></li>
                                <li>
                                    <a href="#">Comment</a>
                                </li>
                                <li>
                                    <a href="#">Share</a>
                                </li>
                                <li>
                                    <a href="#">Edit</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </li>
            <li class="stream-item">
                <div class="stream-line"/>
                <div class="link has-featured-img">
                    <tpl:link rel="person" href="#" status="offline" src="/theme/assets/img/avatars/hamilton.jpeg"
                              class="featured-img person" width="50" height="50"/>
                    <div class="stream-content">
                        <h3 class="subject heading">
                            <a href="#" class="subject">Lewis Hamilton</a>
                            <span class="action">uploaded new files</span>
                            <a href="#" class="time">
                                <span>2 hours ago</span>
                            </a>
                            <a class="privacy" href="#">
                                <span class="fa fa-cog"/>
                            </a>
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
                                    Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec
                                    eu
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
                        <div class="actions clearfix">
                            <ul class="nav nav-pills pull-left">
                                <li>
                                    <a href="#">Like</a>
                                </li>
                                <li>
                                    <a href="#">Comment</a>
                                </li>
                                <li>
                                    <a href="#">Share</a>
                                </li>
                                <li>
                                    <a href="#">Edit</a>
                                </li>
                            </ul>
                            <ul class="nav nav-pills pull-right">
                                <li>
                                    <a href="#">Delete</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </li>
            <li class="stream-title">1 hour ago</li>
            <li class="stream-item">
                <div class="link has-featured-img">
                    <tpl:link rel="person" href="#" src="/theme/assets/img/avatars/me.png" class="featured-img person"
                              width="50" height="50" status="online"/>
                    <div class="stream-content">
                        <h3 class="subject heading">
                            <a href="#" class="subject">Livingstone Fultang</a>
                            <span class="action">created a new milestone with 12 sub-tasks</span>
                            <a href="#" class="time">
                                <span>3 hours ago</span>
                            </a>
                            <a class="privacy" href="#">
                                <span class="fa fa-cog"/>
                            </a>
                        </h3>

                        <div class="body clearfix">
                            <div class="content clearfix">
                                <p>The following is the task lists that still needs complete, could some one have a look
                                    at
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
                            <ul class="nav nav-pills pull-left">
                                <li>
                                    <a href="#">Like</a>
                                </li>
                                <li>
                                    <a href="#">Comment</a>
                                </li>
                                <li>
                                    <a href="#">Share</a>
                                </li>
                                <li>
                                    <a href="#">Edit</a>
                                </li>
                            </ul>
                            <ul class="nav nav-pills pull-right">
                                <li>
                                    <a href="#">Delete</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </li>
            <li class="stream-item">
                <div class="link has-featured-img">
                    <tpl:link rel="person" href="#" src="/theme/assets/img/avatars/obama.png"
                              class="featured-img person" width="50" height="50" status="online"/>
                    <span class="extra label label-warning">Task</span>
                    <span class="extra label label-danger">Urgent</span>

                    <div class="stream-content">
                        <h3 class="subject heading">
                            <a href="#" class="subject">Barack Obama</a>
										<span class="action">created a new
					task</span>
                            <a href="#" class="time">
                                <span>3 hours ago</span>
                            </a>
                            <a class="privacy" href="#">
                                <span class="fa fa-cog"/>
                            </a>
                        </h3>


                        <div class="body clearfix">
                            <div class="content clearfix">
                                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis
                                    egestas.
                                    Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec
                                    eu
                                    libero sit amet quam egestas semper. Aenean
                                    ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                            </div>
                        </div>
                        <div class="actions clearfix">
                            <ul class="nav nav-pills pull-left">
                                <li>
                                    <a href="#">Like</a>
                                </li>
                                <li>
                                    <a href="#">Comment</a>
                                </li>
                                <li>
                                    <a href="#">Share</a>
                                </li>
                                <li>
                                    <a href="#">Edit</a>
                                </li>
                            </ul>
                            <ul class="nav nav-pills pull-right">
                                <li>
                                    <a href="#">Delete</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </li>
            <li class="stream-item">
                <div class="link has-featured-img">
                    <tpl:link rel="person" href="#" src="/theme/assets/img/avatars/owenjones.jpeg"
                              class="featured-img person" width="50" height="50" status="online"/>

                    <div class="stream-content">
                        <h3 class="subject heading">
                            <a href="#" class="subject">Owen Jones</a>
                            <span class="action">uploaded new files</span>
                            <a href="#" class="time">
                                <span>2 hours ago</span>
                            </a>
                            <a class="privacy" href="#">
                                <span class="fa fa-cog"/>
                            </a>
                        </h3>

                        <div class="body clearfix">
                            <div class="content clearfix">
                                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis
                                    egestas.
                                    Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec
                                    eu
                                    libero sit amet quam egestas semper. Aenean
                                    ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                            </div>
                        </div>
                        <div class="actions clearfix">
                            <ul class="nav nav-pills pull-left">
                                <li><a href="#">Like</a></li>
                                <li>
                                    <a href="#">Comment</a>
                                </li>
                                <li>
                                    <a href="#">Share</a>
                                </li>
                                <li>
                                    <a href="#">Edit</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</tpl:layout>
