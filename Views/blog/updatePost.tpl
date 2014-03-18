    {% if oPost|Exists %}
	    <div class="modal-header">
	         <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	         <h1 class="modal-title" id="myModalLabel">
		        <a href="#" class="ui-editable" data-type="text" data-tpl="<input type='text'class='input-lg'>" data-entity="post" data-name="title" data-pk="{{oPost.idpost}}" data-url="/backend/crud/update/">
                    {{oPost.title|safe}}
                </a> 
	         </h1>
	    </div>
	    <div class="modal-body">
	        <form role="form" data-entity="post" data-pk="{{oPost.idpost}}" id="updatepostForm" action="/backend/crud/update/" method="post">
	            <div class="form-group">
	                <div class="ui-editor" data-name="content">
	                {{oPost.content|safe}}
	                </div>
                    <p class="text-right"><small>Dernière édition <span class="ui-timestamp" data-timestamp="{{oPost.lastupdate}}"></span></small></p>
	            </div>
	        </form>                         
	    </div>
	    <div class="modal-footer">
	         <button type="button" class="btn btn-lg btn-default" data-dismiss="modal">{{tr['cancel']}}</button>
	         <button type="button" class="btn btn-lg btn-primary ui-sendform refreshOnCallback sendNotificationOnCallback" data-form="#updatepostForm">{{tr['save']}}</button>
	    </div>	    
    {% endif %}
