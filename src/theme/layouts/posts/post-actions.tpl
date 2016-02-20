<?xml version="1.0"?>
<tpl:layout xmlns:tpl="http://budkit.org/tpl" name="post-actions">
    <div class="actions btn-group">
        <button type="button" class="btn btn-default dropdown-toggle btn-rounded"
                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="ionicons ion-gear-b"/>
        </button>
        <ul class="dropdown-menu pull-right">
            <li>
                <a tpl:href="#" class="edit">
                    <span>Edit post</span>
                </a>
            </li>
            <li role="separator" class="divider"></li>
            <li>
                <a tpl:href="#" class="edit">
                    <span>Add label</span>
                </a>
            </li>
            <li>
                <a tpl:href="#" class="delete color-alizarin">
                    <span class="color-alizarin">Delete post</span>
                </a>
            </li>
        </ul>
    </div>
</tpl:layout>