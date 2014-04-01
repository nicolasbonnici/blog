{% if oEntities|Exists %} {% for oPost in oEntities %}
<tr>
    <td><input
        type="checkbox"
        class="ui-select posts input-lg"
        name="idpost"
        value="{{oPost.idpost}}" /></td>
    <td>
        <p class="text-lg">
            <a
                href="#"
                class="ui-editable"
                data-url="/crud/update/"
                data-entity="Post"
                data-name="title"
                data-pk="{{oPost.idpost}}"
                title="{{tr['view']}}"> {{oPost.title|safe}} </a>
        </p>
    </td>
    <td>
        <p class="text-lg">
            <a
                href="#"
                class="ui-editable"
                data-type="select"
                data-source="{'unpublished': 'Non publié', 'publish': 'Publié'}"
                data-value="{{oPost.status}}"
                data-url="/crud/update/"
                data-entity="Post"
                data-name="title"
                data-pk="{{oPost.idpost}}"
                title="{{tr['view']}}"> {{oPost.status}} </a>
        </p>
    </td>
    <td>
        <p class="text-lg">
            <span
                class="ui-timestamp"
                data-timestamp="{{oPost.lastupdate}}"></span>
        </p>
    </td>
    <td class="text-center">
        <div class="btn-group">
            <button
                type="button"
                class="btn btn-lg btn-info btn-default dropdown-toggle"
                data-toggle="dropdown">
                Actions <span class="caret"></span>
            </button>
            <ul
                class="dropdown-menu"
                role="menu">
                <li><a
                    href="#modal-post"
                    class="ui-sendxhr ui-tip"
                    data-url="/blog/posts/read/"
                    data-selector="#modal-post-content"
                    data-entity="Post"
                    data-toggle="modal"
                    data-idpost="{{oPost.idpost}}"
                    title="{{tr['view']}}"> {{tr['view']}} <span class="glyphicon glyphicon-zoom-in"></span>
                </a></li>
                <li><a
                    href="#modal-post"
                    class="ui-sendxhr ui-tip"
                    data-url="/blog/posts/update"
                    data-selector="#modal-post-content"
                    data-toggle="modal"
                    data-idpost="{{oPost.idpost}}"
                    title="{{tr['edit']}}"> {{tr['edit']}} <span class="glyphicon glyphicon-pencil"></span>
                </a></li>
                <li class="divider"></li>
                <li><a
                    href="#modal-post"
                    class="ui-sendxhr ui-tip"
                    data-url="/blog/posts/delete/"
                    data-selector="#modal-post-content"
                    data-toggle="modal"
                    data-pk="{{oPost.idpost}}"
                    title="{{tr['delete']}}"> {{tr['delete']}} <span class="glyphicon glyphicon-trash"></span>
                </a></li>
            </ul>
        </div>
    </td>
</tr>
{% endfor %} {% else %}
<tr>
    <td>Aucun enregistrement</td>
</tr>
{% endif %}
