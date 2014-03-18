{% if oEntities|Exists %}
	{% for oPost in oEntities %}
	        <tr>
	            <td>
	                <input type="checkbox" class="ui-select posts input-lg" name="idpost" value="{{oPost.idpost}}" />
	            </td>
                <td>
                    <h3 class="">
                        <a href="#modal-post" class="ui-sendxhr showOnHover" data-url="/backend/crud/read/" data-selector="#modal-post-content" data-entity="Post" data-view="post/read.tpl" data-toggle="modal" data-pk="{{oPost.idpost}}" title="{{tr['view']}}">
                            {{oPost.title|safe}} <span class="targetToShow glyphicon glyphicon-zoom-in"></span>
                        </a>
                    </h3>
                </td>
	            <td>
	               <h3>{{oPost.status}}</h3>
	            </td>
	            <td>
	               <h3><span class="ui-timestamp" data-timestamp="{{oPost.lastupdate}}"></span></h3>
	            </td>
	            <td class="text-center">
                
                    <div class="btn-group">
                      <button type="button" class="btn btn-lg btn-info btn-default dropdown-toggle" data-toggle="dropdown">
                        Actions <span class="caret"></span>
                      </button>
                      <ul class="dropdown-menu" role="menu">
                        <li>
                            <a href="#modal-post" class="ui-sendxhr ui-tip" data-url="/backend/blog/readPost/" data-selector="#modal-post-content" data-entity="Post" data-toggle="modal" data-idpost="{{oPost.idpost}}" title="{{tr['view']}}">
                                {{tr['view']}} <span class="glyphicon glyphicon-zoom-in"></span>
                            </a>
                        </li>
                        <li>
                            <a href="#modal-post" class="ui-sendxhr ui-tip" data-url="/backend/blog/updatePost/" data-selector="#modal-post-content" data-toggle="modal" data-idpost="{{oPost.idpost}}" title="{{tr['edit']}}">
                                {{tr['edit']}} <span class="glyphicon glyphicon-pencil"></span>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#modal-post" class="ui-sendxhr ui-tip" data-url="/backend/blog/deletePost/" data-selector="#modal-post-content" data-toggle="modal" data-pk="{{oPost.idpost}}" title="{{tr['delete']}}">
                                {{tr['delete']}} <span class="glyphicon glyphicon-trash"></span>
                            </a>
                        </li>
                      </ul>
                    </div>
	            </td>
	        </tr>
	{% endfor %}
{% else %}
<tr>
    <td>
        Aucun enregistrement
    </td>
</tr> 	
{% endif %}
