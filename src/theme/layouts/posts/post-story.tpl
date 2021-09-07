<?xml version="1.0"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" name="post-story">
    <div class="post-story">
        <span class="stream-label"></span>
        <div class="stream-line"/>
        <div class="item has-featured-img">
            <div class="stream-content">
                <h3 class="subject heading">

                    <tpl:link rel="person" tpl:name="${edgeData.story_author.user_first_name} ${edgeData.story_author.user_last_name}"
                             tpl:href="/member/@${edgeData.story_author.user_name_id}"
                              class="person"
                    />
                    <a tpl:href="/post/${edgeData.object_uri}" class="time">
                        <span class="label label-time"><tpl:datetime value="edgeData.object_created_on" format="diff" /> </span>
                    </a>
                    <tpl:condition on="edgeData.story_object" test="empty" is="0">
                        <span class="stream-activity">
                            <span class="story"><span class="pls prs"><tpl:data value="edgeData.story_object.prefix" /></span><a tpl:href="${edgeData.story_object.url}"><tpl:data value="edgeData.story_object.type" /></a></span>
                        </span>
                    </tpl:condition>
                </h3>
                <tpl:import name="posts/post-actions" />

                    <div class="stream-media">
                        <tpl:condition on="edgeData.story_figure" test="empty" is="0">
                    <figure>
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
                        <figcaption>
                            <h4><a href="#">Exhibit B. The <cite>Rough Copy</cite> trailer.</a></h4>
                            <p> Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac
                                turpis
                                egestas.
                                Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.
                                Donec eu
                                libero sit amet quam egestas semper. Aenean
                                ultricies mi vitae est. Mauris placerat eleifend leo.
                            </p>
                        </figcaption>
                    </figure>
                        </tpl:condition>
                </div>

            </div>
        </div>
    </div>
</tpl:layout>