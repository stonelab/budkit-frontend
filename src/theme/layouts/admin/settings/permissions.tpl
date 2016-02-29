<tpl:layout xmlns="http://www.w3.org/1999/xhtml" xmlns:tpl="http://budkit.org/tpl">
    <div class="col-md-12 ptm">
        <div class="panel panel-fieldset">
            <div class="panel-heading">
                <div class="panel-title">Add group</div>
            </div>

            <div class="panel-body">
                <form action="/settings/system/permissions/authorities/edit" method="POST"  class="row">
                    <div class="form-group  col-md-5 mbn">
                        <label class="sr-only">Group Name</label>
                        <input type="text" name="authority-title" class="form-control" placeholder="Group Name" />
                    </div>

                    <div class="form-group col-md-5 pln prn mbn">

                        <label class="sr-only">Parent Group</label>
                        <select name="authority-parent" id="authority-parent" class="form-control">
                            <option value="">Select Parent</option>
                            <tpl:loop foreach="authorities" id="authorities">
                                <option tpl:value="${authority_id}">
                                    <tpl:loop limitby="indent"> -- </tpl:loop>
                                    <span><tpl:data value="authority_title" /></span>
                                </option>
                            </tpl:loop>
                        </select>

                    </div>
                    <div class="form-group col-md-2 mbn">
                        <input type="hidden" name="authority-description" />
                        <button type="submit" class="btn btn-default btn-block">Submit</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
    <div class="col-md-12 ptm">
        <div class="panel-group condensed" id="authority-group-collapse">

            <tpl:loop foreach="authorities" id="authority-groups">
                <div class="panel panel-collapsible" id="authority-group-collapse">
                    <div class="panel-heading">
                        <div class="panel-title" data-toggle="collapse" data-parent="#authority-group-collapse" tpl:href="#group${authority_id}">
                            <tpl:loop limitby="indent">
                                <span class="ionicon ion-minus-round color-clouds mrs"></span>
                            </tpl:loop>
                            <a tpl:href="/settings/system/permissions/authority/${authority_id}"><span><tpl:data value="authority_title" /></span></a>
                            <a tpl:href="/settings/system/permissions/authority/edit/${authority_id}"><span class="pull-right"><i class="fa fa-cog"></i></span></a>
                        </div>
                    </div>
                    <div tpl:id="group${authority_id}" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table table-striped mbn">
                                <thead>
                                    <th class="col-md-1">Type</th>
                                    <th class="col-md-2">Description</th>
                                    <th class="col-md-6">Area</th>
                                    <th class="col-md-2">Permission</th>
                                    <th>Action</th>
                                </thead>
                                <tbody>
                                    <tpl:loop foreach="permissions" id="authority-permissions">
                                        <tr>
                                            <td><tpl:data value="permission_type" /></td>
                                            <td><tpl:data value="permission_title" /></td>
                                            <td><tpl:data value="permission_area_uri" /></td>
                                            <td class="col-md-2"><tpl:data value="permission" /></td>
                                            <td class="col-md-1"><a href="#">Revoke</a></td>
                                        </tr>
                                    </tpl:loop>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <form method="POST" action="/settings/system/permissions/addrule" class="no-margin">
                                            <input type="hidden" name="area-authority" tpl:value="${authority_id}" />
                                            <input type="hidden" name="authority-id"  tpl:value="${authority_id}" />
                                            <td>
                                                <select name="area-action" class="form-control native">
                                                    <option value="view">View</option>
                                                    <option value="execute">Execute</option>
                                                    <option value="modify">Modify</option>
                                                    <option value="special">Special</option>
                                                </select>
                                            </td>
                                            <td>
                                                <input type="text" name="area-title"  placeholder="e.g Marketplace" class="form-control" />
                                            </td>
                                            <td class="form-group">
                                                <input type="text" name="area-uri" placeholder="e.g /marketplace/*" class="form-control" />
                                            </td>
                                            <td>
                                                <select name="area-permission" class="form-control native">
                                                    <option value="inherit">Inherited</option>
                                                    <option value="allow">Allowed</option>
                                                    <option value="deny" selected="selected">Denied</option>
                                                </select>
                                            </td>
                                            <td>
                                                <button type="submit" class="btn btn-default">Add</button>
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
