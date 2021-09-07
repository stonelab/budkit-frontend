<tpl:layout xmlns="http://www.w3.org/1999/xhtml" xmlns:tpl="http://budkit.org/tpl">
    <div class="col-md-12 ptm">
        <div class="panel panel-fieldset">
            <div class="panel-heading">
                <div class="panel-title">Add menu group</div>
            </div>

            <div class="panel-body">
                <form action="/admin/settings/navigation/create" method="POST"  class="row">
                    <div class="form-group  col-md-5 mbn prn">
                        <label class="sr-only">Menu unique name</label>
                        <input type="text" name="menu_group_uid" class="form-control" placeholder="Unique name" />
                    </div>
                    <div class="form-group  col-md-5 mbn prn">
                        <label class="sr-only">Menu description</label>
                        <input type="text" name="menu_group_title" class="form-control" placeholder="Menu description" />
                    </div>
                    <div class="form-group col-md-2 mbn">
                        <button type="submit" class="btn btn-default btn-block">Submit</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
    <div class="col-md-12 ptm">
        <div class="panel-group condensed" id="menu-group-collapse">

            <tpl:loop foreach="menus" id="menu-groups">
                <div class="panel panel-collapsible" id="menu-group-collapse">
                    <div class="panel-heading">
                        <div class="panel-title" data-toggle="collapse" data-parent="#menu-group-collapse" tpl:href="#group${menu_group_id}">
                            <a tpl:href="/settings/system/permissions/authority/${menu_group_id}"><span><tpl:data value="menu_group_title" /></span></a>
                            <span class="ionicon ion-minus-round color-silver mrs mls"></span>
                            <span class="color-silver">uid: <tpl:data value="menu_group_uid" /></span>
                            <a href="#"><span class="pull-right"><i class="fa fa-cog"></i></span></a>
                        </div>
                    </div>
                    <div tpl:id="group${menu_group_id}" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table table-striped mbn">
                                <thead>
                                    <tr>

                                        <th width="2%"></th>
                                        <th width="30%">Title</th>
                                        <th width="50%">Permalink</th>
                                        <th></th>
                                        <th>Action</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tpl:loop foreach="children" id="menu-children">
                                        <tr>
                                            <td>
                                                <label class="checkbox">
                                                    <input type="checkbox" name="page_uri[]" tpl:value="${user_name_id}" />
                                                </label>
                                            </td>
                                            <td>
                                                <span>
                                                    <tpl:loop limitby="indent">
                                                         <span class="ionicon ion-minus-round color-clouds mrs"></span>
                                                    </tpl:loop>
                                                </span>
                                                <a tpl:href="${menu_url}"><tpl:data value="menu_title" /></a>
                                            </td>
                                            <td><tpl:data value="menu_url" /></td>
                                            <td><a href="#" >Edit</a></td>
                                            <td><a href="#" class="color-warning">Rules</a></td>
                                            <td><a href="#" class="color-danger mts mbs">Delete</a></td>
                                        </tr>
                                    </tpl:loop>
                                </tbody>
                                <tfoot class="mtl">
                                <tr>
                                    <form method="POST" action="/admin/settings/navigation/add" class="no-margin">
                                        <input type="hidden" name="menu_group_id" tpl:value="${menu_group_id}" />
                                        <td colspan="2">
                                            <div class="form-group">
                                                <label for="menu_title" class="sr-only">Link title</label>
                                                <input type="text" name="menu_title"  placeholder="Link title e.g Marketplace" class="form-control" />
                                            </div>
                                            <div class="form-group">
                                                <label for="menu_parent_id" class="sr-only">Link parent</label>
                                                <select name="menu_parent_id" class="form-control native">
                                                    <option>No Parent</option>
                                                    <tpl:loop foreach="children">
                                                        <option tpl:value="${menu_id}"><tpl:data value="menu_title" /> </option>
                                                    </tpl:loop>
                                                </select>
                                            </div>
                                            <button type="submit" class="btn btn-default">Add Link</button>
                                        </td>
                                        <td colspan="4">
                                            <div class="form-group">
                                                <label for="menu_url" class="sr-only">Link URL</label>
                                                <input type="text" name="menu_url" placeholder="Link URL e.g /marketplace/*" class="form-control" />
                                            </div>
                                            <div class="form-group">
                                                <label for="menu_classess" class="sr-only">Link classess</label>
                                                <input type="text" name="menu_classes" placeholder="Styling classes" class="form-control" />
                                            </div>
                                        </td>
                                    </form>
                                </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </tpl:loop>
        </div>
    </div>
</tpl:layout>
