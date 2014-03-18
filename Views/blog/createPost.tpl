
  <div class="modal-header">
       <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
      <h4 class="modal-title" id="myModalLabel">
          Nouveau Post!
      </h4>
  </div>
  
  <div id="modal-create-content" class="modal-body">
	<form role="form" id="newPostForm" action="/backend/crud/create/" data-entity="Post" data-view="crud/create.tpl" method="post">
	    <div class="form-group">
	        <label>Titre du post</label>
            <input type="text" name="label" class="form-control input-lg" placeholder="Entrez le titre de votre post" value="{% if title|Exists %}{{title}}{% endif %}" />
	    </div>   
	    <div class="form-group">
	        <label>Deadline</label>
	        <div class="input-group date ui-datetimepicker">
	            <input type="text" class="form-control input-lg" placeholder="La date butoire de ce post" />
	            <span class="input-group-addon">
	               <span class="glyphicon glyphicon-calendar"></span>
	            </span>
	        </div>
	    </div>
	    
	    <div class="form-group">
	        <label>Contenu</label>
	        <div class="ui-editor" data-name="content" data-placeholder="Vous pouvez mettre en form votre post à l'aide de la barre d'outils de mise en forme">
	        {% if content|Exists %}{{content}}{% endif %}
	        </div>
	    </div>
	</form> 		    
  
  </div> 

  <div class="modal-footer">
       <button type="button" class="btn btn-lg btn-default" data-dismiss="modal">{{tr['cancel']}}</button>
       &nbsp;<button type="button" class="btn btn-lg btn-primary ui-sendform refreshOnCallback sendNotificationOnCallback" data-form="#newPostForm" title="Enregistrer ce post">{{tr['save']}}</button>
  </div>    	
