<?xml version="1.0"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" name="stream-editor">
    <form  method="post">
        <div class="row">
            <!--/.col-md-6-->
            <div class="col-md-8">
                <div class="input-group">
                    <input type="text" class="form-control" data-autocomplete="true" id="location" placeholder="Location"/>
                    <!--<span class="input-group-addon background-white">
                        <select class="native">
                            <option>Category</option>
                        </select>
                    </span>
                     -->
                    <div class="input-group-btn">
                        <button type="button" class="btn btn-secondary">
                            <span class="fui fui-search"></span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script data-main="/theme/assets/js/main">
        //<![CDATA[
        require(['config'], function () {
            require(['jquery'], function() {

            })
        });
        //]]>
    </script>
</tpl:layout>