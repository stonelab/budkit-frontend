<!DOCTYPE HTML>
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
                    <li tpl:class="stream-item ${edgeData.story_type}" tpl:uri="${edgeData.object_uri}">

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

        <script id="add-label" type="x-template">
            <form method="post" action="" class="form-group input-group input-group-sm clearfix mrl">
                <select class="select-labels form-control" multiple="multiple">
                    <option value="information">Information</option>
                    <option value="done">Done</option>
                </select>
                <div class="input-group-btn">
                    <button type="submit" class="btn btn-secondary">Submit</button>
                </div>
            </form>
        </script>
        <script type="text/javascript">
            require(['config'], function(){
                require(['chosen', 'budkit.stream'], function() {
                    //Adding labels
                    $('[data-action="add-label"]').each(function(i, el) {
                        var $el = $(el);
                        $el.on("click", function(e) {
                            e.preventDefault();
                        });
                    });
                });
            });
        </script>
    </div>
</tpl:layout>
