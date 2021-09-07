<?xml version="1.0"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" name="post-actions">
    <div class="actions btn-group">
        <button type="button" class="btn btn-default dropdown-toggle btn-rounded"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="ionicons ion-gear-b"/>
        </button>
        <tpl:menu tpl:uid="mediamenu:${edgeData.object_uri}" class="dropdown-menu pull-right" />
    </div>
</tpl:layout>