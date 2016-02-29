<?xml version="1.0"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" name="stream">
    <div class="stream-list">
        <tpl:condition on="stories" test="empty" is="1">
            <div class="container-empty-state">
                <p>Nothing to show</p>
            </div>
        </tpl:condition>
        <tpl:condition on="stories" test="empty" is="0">

            <div class="stream-line"/>
            <ul class="stream">
                <tpl:loop foreach="stories">
                    <li tpl:class="stream-item ${edgeData.story_type}">
                        <tpl:import tpl:name="edgeData.story_type" />
                    </li>
                </tpl:loop>

                <!--
                    <li class="stream-title">Teu, Sep 09</li>
                    <li class="stream-item">
                        <tpl:import name="posts/post-story" />
                    </li>
                    <li class="stream-item">
                        <tpl:import name="posts/post-photo" />
                    </li>
                    <li class="stream-item">
                        <tpl:import name="posts/post-figure" />
                    </li>
                    <li class="stream-title">Teu, Sep 09</li>
                    <li class="stream-item">
                        <tpl:import name="posts/post-story" />
                    </li>
                -->
            </ul>
        </tpl:condition>
    </div>
</tpl:layout>
