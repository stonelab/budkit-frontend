<?xml version="1.0"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" name="stream-editor">
    <div class="stream-content stream-editor">
        <form class="form-stream" action="/member/timeline/put" method="post">
            <div class="input-group">
                <span class="input-group-addon btn">
                    <i class="ionicons ion-plus" />
                </span>
                <textarea class="stream-post form-control" rows="3" name="media_content" placeholder="Say something"></textarea>
                <input type="hidden" name="csrftoken" tpl:value="${csrftoken}"/>
                <input type="hidden" name="_method" value="POST"/>
            </div>
        </form>
    </div>
    <script data-main="/theme/assets/js/main">
        //<![CDATA[
        require(['config'], function () {
            require(['jquery'], function() {
                $('form[action="/member/timeline/put"] textarea.stream-post').keypress(function(event) {

                    if (event.which == 13) {
                        event.preventDefault();
                        console.log($(this).parents("form:first"))
                        $(this).parents("form:first").submit();
                    }
                });
            })
        });
        //]]>
    </script>
</tpl:layout>