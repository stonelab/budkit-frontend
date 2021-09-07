<?xml version="1.0" encoding="utf-8"?>
<tpl:layout name="pages" xmlns:tpl="http://budkit.org/tpl">
    <div class="col-md-12 ptm">
        <div class="panel panel-list">

            <div class="panel-heading clearfix">
                <form class="form-inline col-md-12 col-sm-12" method="POST" action="/settings/system/save">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                <select aria-controls="table1" class="form-control flat native  input-sm">
                                    <option value="">List length ...</option>
                                    <option value="10">10</option>
                                    <option value="25">25</option>
                                    <option value="50">50</option>
                                    <option value="100">100</option>
                                </select>
                            </label>
                        </div>
                    </div>
                    <div class="col-md-6">

                    </div>
                    <div class="col-md-3">
                        <div class="form-group pull-right">
                            <label>
                                <div class="input-group input-group-sm">
                                    <input class="form-control input-sm flat" type="search" placeholder="Filter..."/>
                                      <span class="input-group-btn flat">
                                        <button type="submit" class="btn"><span class="fui-search"></span></button>
                                      </span>
                                </div>
                            </label>

                        </div>
                    </div>
                </form>
            </div>
            <div class="panel-body clearfix row">

                <div class="table-responsive">
                    <table class="table table-striped table-vertical-aligned    ">
                        <thead>
                        <tr>

                            <th width="2%"></th>
                            <th width="3%"></th>
                            <th width="25%">Name</th>
                            <th></th>
                            <th>Joined</th>

                            <th width="25%">Permalink</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tpl:loop foreach="members">
                            <tr>
                                <td>
                                    <label class="checkbox">
                                        <input type="checkbox" name="page_uri[]" tpl:value="${user_name_id}" />
                                    </label>
                                </td>
                                <td>
                                    <tpl:link rel="person" tpl:src="/file/${user_photo}/50x50" />
                                </td>
                                <td>

                                    <a tpl:href="/member/@${user_name_id}">
                                        <span class="mrs"><tpl:data value="user_first_name" /></span>
                                        <span><tpl:data value="user_last_name" /></span>
                                        <tpl:condition on="user_verified" test="equals" is="verified">
                                            <em class="ionicons ion-ios-checkmark color-success mls" title="verified" />
                                        </tpl:condition>
                                    </a>
                                </td>
                                <td><a tpl:href="/member/@${user_name_id}">@<tpl:data value="user_name_id" /></a></td>
                                <td>
                                    <tpl:datetime value="object_created_on" format="diff" /></td>
                                <td>
                                    /member/@<tpl:data value="user_name_id" />
                                </td>
                                <td>
                                    <a tpl:href="/admin/member/@${object_uri}/moderate" class="color-danger">Moderate</a>
                                </td>
                            </tr>
                        </tpl:loop>

                        </tbody>
                    </table>
                </div>
            </div>

            <tpl:import name="pagination" />

        </div>
    </div>
</tpl:layout>


