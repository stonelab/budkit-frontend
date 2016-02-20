<?xml version="1.0" encoding="UTF-8"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" name="index">
    <div class="container-block">
        <div class="profile">
            <tpl:link rel="person"
                      status="offline"
                      tpl:href="/member/@${session.user.user_name_id}"
                      tpl:src="/file/${session.user.user_photo}/100x100"
                      class="person"
            />
         </div>

        <br />
        <tpl:menu uid="dashboardmenu" type="nav-stacked" show-icons="true" class="nav menu" />
        <hr class="mbn mtn" />
        <tpl:menu uid="usermenu" type="nav-stacked" show-icons="true" class="nav menu"/>
    </div>
</tpl:layout>