<?xml version="1.0"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" name="stream">
    <div class="stream-list">
        <div class="stream-line"/>
        <ul class="stream">
            <li class="stream-title">Today</li>

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
                            <span class="pins">
                                <a href="/member/timeline/1AgdAGAEgsd">
                                    <span class="label color-peter-river">
                                        <i class="ionicons ion-ios-pulse-strong" title="conversation"/> 20
                                    </span>
                                </a>
                                <a href="/member/timeline/1AgdAGAEgsd" class="time">
                                    <span class="label color-orange">
                                         <i class="ionicons ion-clock" title="timeg"/> 2h
                                    </span>
                                </a>
                            </span>
                        </h3>
                        <div class="summary">Requesting  a 3 bed flat near Birmingham, Egbaston for 3 guests</div>
                        <div class="stream-activity">
                            <i class="ionicon ion-checkmark color-turquoise" />  <a class="author-username" href="#">@livingstonef</a> <span>approved this host</span>
                        </div>
                    </div>
                </li>
            </tpl:loop>
        </ul>
    </div>
    <!--import the mustache template -->
    <tpl:import name="posts/single.mustache"/>
</tpl:layout>
