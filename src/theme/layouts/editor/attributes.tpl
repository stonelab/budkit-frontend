<?xml version="1.0" encoding="utf-8"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl">

    <div class="form-group">
        <label for="exampleInputEmail1">Title</label>
        <input type="text" class="form-control"  name="media_title" tpl:value="${editing.media_title}" placeholder="Title" />
    </div>
    <tpl:condition on="editor" test="equals" is="page">
        <div class="form-group">
            <label for="media_template">Template</label>
            <select name="media_template"  class="form-control">
                <option value="default">default-page</option>
                <tpl:loop foreach="templates">
                    <option tpl:value="${name}" tpl:selected="editing.media_template"><tpl:data value="name" /></option>
                </tpl:loop>
            </select>
        </div>
    </tpl:condition>

    <div class="form-group">
        <label for="exampleInputPassword1">Status</label>
        <div class="">
        <button type="submit" class="btn btn-success">Submit <tpl:data value="editor" /></button>
        <a class="btn btn-danger pull-right">Delete</a>
        <a class="btn btn-secondary" href="/member/dashboard">Cancel</a>
        <!-- <button class="navbar-btn btn btn-md btn-embossed btn-default mts mlm navbar-right">Preview</button>
         <button class="navbar-btn btn btn-md btn-embossed btn-default mts mlm navbar-right">View Source</button> -->
        </div>
    </div>

</tpl:layout>