<?xml version="1.0"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" name="post-author">
    <tpl:link rel="person" tpl:name="${edgeData.story_author.user_first_name} ${edgeData.story_author.user_last_name}"
              status="offline"
              tpl:href="/member/@${edgeData.story_author.user_name_id}"
              tpl:src="/file/${edgeData.story_author.user_photo}/50x50"
              class="person"
    />
</tpl:layout>