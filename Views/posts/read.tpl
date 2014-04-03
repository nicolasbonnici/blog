<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    {% if oPost|Exists %}
    <h1 class="modal-title" id="myModalLabel">{{oPost.title|safe}}</h1>
    <small>dernière édition le <span class="ui-timestamp" data-timestamp="{{oPost.lastupdate}}"></span></small>
    {% endif %}
</div>
<div class="modal-body">
    {% if oPost|Exists %}
    {{oPost.content|safe}}
    {% else %}
    <div class="alert alert-warning">
        <strong>Warning!</strong> Your role doesn't allow you to see this post
    </div>
    {% endif %}
</div>
<div class="modal-footer">
    <button type="button" class="btn btn-lg btn-default" data-dismiss="modal">Fermer</button>
</div>
