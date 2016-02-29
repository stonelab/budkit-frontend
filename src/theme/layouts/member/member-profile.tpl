<?xml version="1.0" encoding="utf-8"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" extends="index">
    <tpl:remove path="//div[@role='aside']" />
    <!--<tpl:remove path="//div[@role='side']"/> -->
    <tpl:replace path="//div[@role='main']">
        <div class="container-main admin" role="main">
            <div class="container-navigation">
                <tpl:import name="admin/navigation" />
            </div>
            <div class="container-block">

                     <div class="container-profile-header profile-header">
                         <tpl:condition on="user.user_cover_photo" test="empty" is="0">
                             <div class="profile-cover" tpl:style="background-image: url(${user.user_cover_photo})" />
                         </tpl:condition>
                     </div>


                    <div class="container-profile">
                        <div class="container-pside sidestream" role="stream">
                            <tpl:link rel="person" wrap="div" status="online"  tpl:src="/file/${user.user_photo}/200x200" class="person" />

                            <div class="row profile-stat">
                                <div class="col-md-4 col-sm-4 col-xs-6 prn pln">
                                    <div class="uppercase profile-stat-title"> 0 </div>
                                    <div class="uppercase profile-stat-text"> Stories </div>
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-6 prn pln">
                                    <div class="uppercase profile-stat-title"> 0 </div>
                                    <div class="uppercase profile-stat-text"> Follower </div>
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-6 pln prn">
                                    <div class="uppercase profile-stat-title"> 0 </div>
                                    <div class="uppercase profile-stat-text"> Following </div>
                                </div>
                            </div>

                            <div>
                                <tpl:condition on="user.user_biography" test="empty" is="0">
                                    <p class="profile-desc-text"><tpl:data value="user.user_biography" parsedown="true" markup="true" /></p>
                                </tpl:condition>
                                <tpl:condition on="user.user_website" test="empty" is="0">
                                    <div class="profile-desc-link">
                                        <i class="fa fa-globe"></i>
                                        <a tpl:href="${user.user_website}"><tpl:data value="user.user_website" /></a>
                                    </div>
                                </tpl:condition>
                                <tpl:condition on="user.user_twitter_uid" test="empty" is="0">
                                    <div class="profile-desc-link">
                                        <i class="fa fa-twitter"></i>
                                        <a tpl:href="http://www.twitter.com/${user.user_twitter_uid}">@<tpl:data value="user.user_twitter_uid" /></a>
                                    </div>
                                </tpl:condition>
                            </div>
                        </div>


                        <div class="container-aside sidestream" role="stream"> </div>

                        <div class="container-main relative stream-list-content background-white border-clouds border-left border-top border-right border-bottom" role="main">

                                <div class="profile-title">
                                    <h1 class="name">
                                        <span class="first_name mrs"><tpl:data value="user.user_first_name" /></span>
                                        <span class="last_name"><tpl:data value="user.user_last_name" /></span>
                                    </h1>
                                    <p class="about"><tpl:data value="user.user_headline" /></p>
                                    <a href="#" class="btn btn-lg btn-info">Follow</a>
                                </div>


                                <div class="stream-detailed">
                                    <tpl:import name="stream" />
                                </div>

                        </div>

                    </div>


            </div>
        </div>
    </tpl:replace>
</tpl:layout>