<?xml version="1.0"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" name="post-standard">
    <div class="post-standard">
        <span class="stream-label"></span>
        <div class="stream-line"/>
        <div class="item has-featured-img">
            <div class="stream-content">
                <h3 class="subject heading">
                    <tpl:link rel="person" tpl:name="${edgeData.story_author.user_first_name} ${edgeData.story_author.user_last_name}"
                              status="offline"
                              tpl:href="/member/@${edgeData.story_author.user_name_id}"
                              tpl:src="/file/${edgeData.story_author.user_photo}/50x50"
                              class="person"
                    />

                    <a tpl:href="/member/timeline/${edgeData.object_uri}" class="time">
                        <span class="label label-time"><tpl:datetime value="edgeData.object_created_on" format="diff" /></span>
                    </a>
                    <!--  <span class="pins pull-right">

                        <a href="/member/timeline/map/1AgdAGAEgsd">
                            <span class="label color-peter-river">
                                <i class="ionicons ion-ios-location" title="conversation"/> Birmingham
                            </span>
                        </a>
                    </span>
                    -->

                    <tpl:import name="posts/post-actions" />
                </h3>

                <!--  If labels
                <div class="stream-labels">
                    <span class="extra label label-warning">Task</span>
                    <span class="extra label label-danger">Urgent</span>
                    <span class="extra label label-info">Information</span>
                    <span class="extra label label-success">Done</span>
                    <span class="extra label label-default">Urgent</span>
                </div> -->


                <div class="body clearfix">
                    <div class="content clearfix">
                        <tpl:data value="edgeData.media_content" parsedown="true" markup="true" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</tpl:layout>