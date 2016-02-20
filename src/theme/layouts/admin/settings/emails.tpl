<tpl:layout xmlns="http://www.w3.org/1999/xhtml" xmlns:tpl="http://budkit.org/tpl">
    <div class="col-md-12 ptm">
        <div class="panel-group condensed" id="email-template-collapse">
            <tpl:loop foreach="emails" id="email-templates">
                <div class="panel panel-collapsible" id="email-template-collapse">
                    <div class="panel-heading">
                        <div class="panel-title" data-toggle="collapse" data-parent="#email-template-collapse"
                             tpl:href="#template${name}">
                            <span><tpl:data value="title"/></span>
                        </div>
                    </div>
                    <div tpl:id="template${name}" class="panel-collapse collapse">
                        <div class="panel-body">
                            <form class="form-vertical pln prn" method="POST" action="/admin/settings/save">

                                <div class="form-group">
                                    <label class="control-label" tpl:for="options[${name}][subject]">Subject</label>
                                    <div class="controls">
                                        <input type="text" tpl:name="options[${name}][subject]"
                                               class="form-control" placeholder="Enter email subject"
                                               tpl:value="${subject}"/>
                                        <span class="help-block">A single line text only subject. Template params allowed.</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label"
                                           tpl:for="options[${name}][text]">Text</label>
                                    <div class="controls">
                                            <textarea tpl:name="options[${name}][text]" rows="5"
                                                      class="form-control">
                                                <tpl:data value="text"/>
                                            </textarea>
                                        <span class="help-block">Text email template. Template params allowed</span>
                                    </div>
                                </div>
                                <input type="hidden" name="options_namespace" value="email" />
                                <button type="submit" class="btn btn-default">Save template</button>
                            </form>
                        </div>
                    </div>
                </div>
            </tpl:loop>
        </div>
    </div>
</tpl:layout>


