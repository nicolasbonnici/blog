    <table id="post-last-items" class="table table-responsive">
        <thead>
            <tr>
                <th>
                    <input type="checkbox" class="ui-select-all ui-toggle" data-toggle-selector=".ui-delete-posts" data-checkbox-class="posts" data-container="#post-last-items" />
                </th>
                <th>
                    <h3>Title</h3>
                </th>
                <th>
                    <h3>Status</h3>
                </th>
                <th>
                    <h3>Last edited</h3>
                </th>
                <th class="text-center">
                    <h3>Actions</h3>
                </th>
            </tr>
        </thead>
        <tbody id="postList" class="ui-loadable" data-entity="Post" data-view="blog/listPost.tpl" data-parameters="" data-module="backend" data-controller="crud" data-action="listByUser">
    
        </tbody>
    </table>
