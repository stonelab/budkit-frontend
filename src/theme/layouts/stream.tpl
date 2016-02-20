<?xml version="1.0"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" name="stream">
    <div class="stream-list">
        <div class="stream-line"/>
        <ul class="stream">
            <tpl:loop foreach="stories">
                <li class="stream-item">
                    <tpl:import tpl:name="edgeData.story_item_type" />
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
    </div>
</tpl:layout>
