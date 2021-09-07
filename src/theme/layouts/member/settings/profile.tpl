<?xml version="1.0" encoding="utf-8"?>
<tpl:layout name="profile" xmlns:tpl="http://budkit.org/tpl">
    <div class="col-md-12 ptm">
        <div class="panel">
            <div class="panel-body clearfix row">
                <form class="form-vertical col-md-12 col-sm-12 col-lg-8" method="post" enctype="multipart/form-data" action="/member/settings/update">

                    <div class="form-group">
                        <label class="control-label"  for="user_headline">Headline</label>
                        <div class="controls">

                                <input class="form-control" id="user_headline" name="user_headline" size="30" type="text" placeholder="E.g PhD Student, or Chief Executive Officer at Company X" tpl:value="${account.user_headline}" />

                        </div>
                    </div><!-- /form-group -->

                    <div class="form-group">
                        <label class="control-label"  for="middle-name">Profile photo</label>
                        <div class="controls clearfix">
                            <tpl:condition on="account.user_photo" test="empty" value="0">
                                <img class="thumbnail img-circle" tpl:src="/file/${account.user_photo}/200x200" />
                            </tpl:condition>
                            <input type="file" name="user_photo" data-label="Change your profile picture..." data-class="btn-info" data-target="budkit-uploader" />
                            <span class="help-block">.gif, .jpg, .jpeg or .png only</span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">Cover photo URL</label>
                        <div class="controls">
                            <input class="form-control" id="cover-photo" name="user_cover_photo" type="text"  tpl:value="${account.user_cover_photo}" />
                        </div>
                    </div><!-- /form-group -->

                    <div class="form-group">
                        <label class="control-label"  for="user_biography">Biography</label>
                        <div class="controls">
                            <textarea class="form-control pull-left" id="user_biography" name="user_biography" rows="7" ><tpl:data value="account.user_biography" /></textarea>
                        </div>
                    </div><!-- /form-group -->
                    <div class="form-group">
                        <label class="control-label"  for="user_website">Website</label>
                        <div class="controls">
                            <input class="form-control" id="user_website" name="user_website" size="30" type="text" placeholder="http://yourwebsite.com" tpl:value="${account.user_website}" />
                        </div>
                    </div><!-- /form-group -->

                    <div class="form-group">
                        <label class="control-label"  for="user_facebook_uid">facebook</label>
                        <div class="controls">
                            <input class="form-control" id="user_facebook_uid" name="user_facebook_uid" size="30" type="text" placeholder="Enter your facebook username" tpl:value="${account.user_facebook_uid}" />
                        </div>
                    </div><!-- /form-group -->

                    <div class="form-group">
                        <label class="control-label"  for="user_twitter_uid">twitter</label>
                        <div class="controls">
                            <input class="form-control" id="user_twitter_uid" name="user_twitter_uid" size="30" type="text" placeholder="Enter your twitter @username" tpl:value="${account.user_twitter_uid}" />
                        </div>
                    </div><!-- /form-group -->
                    
                    <div class="form-actions">
                        <button type="submit" class="btn btn-primary">Save changes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</tpl:layout>