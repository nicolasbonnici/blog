{% extends 'layout.tpl' %} 

{% block favicon %}/lib/bundles/{{sBundle}}/img/icon.png{% endblock favicon %} 
{% block meta_title %}Weblog{% endblock meta_title %}
{% block meta_description %}Weblog personnel de Nicolas Bonnici autours des technologies du web et de ses dernières tendances.{% endblock meta_description %}


{% block js %}
{% endblock %} 

{% block css %}
{% endblock %} 

{% block modal %}
<div class="modal fade" id="modal-post" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" id="modal-post-content">
            <p>&nbsp;</p>
        </div>
    </div>
</div>
{% endblock %} 

{% block main %}
<div class="container-fluid">
    <div class="row">
        <div class="col-md-10 col-md-offset-1 well">
            <h1>
                <span class="glyphicon glyphicon-globe"></span> nbonnici.info
                <small>Weblog autours des technologies du web</small>
                <br />
                <span class="label label-success">#PHP <span class="badge">99+</span></span>
                <span class="label label-default">#JavaScript</span>
                <span class="label label-info">#HTML5</span>
                <span class="label label-success">#CSS3</span>
                <span class="label label-danger">#NodeJs</span>
                <span class="label label-danger">#WebGL</span>
                <span class="label label-primary">#Java</span>
                <span class="label label-primary">#Python</span>
                <span class="label label-primary">#MySQL</span>
                <span class="label label-primary">#NoSQL</span>
                <span class="label label-success">#Security</span>
                <span class="label label-success">#Design</span>
                <span class="label label-warning">#Mobile</span>
                <span class="label label-warning">#Android</span>
                <span class="label label-warning">#Google</span>
                <span class="label label-success">#Linux</span>
                <span class="label label-success">#GNU</span>
            </h1>
        </div>
        
        <div id="blogposts" class="col-md-10 col-md-offset-1 well">
            <div class="row">
            {% if oPosts|Exists %} 
                {% for oPost in oPosts %}
               
                <article class="blogpost col-md-3 showOnHover whiteBg ui-transition">
                    <aside class="blogpost-infos pull-right">
                        <span class="blogpost-comment-badge blackTextShadow ui-transition pull-right">
                            3 <span class="glyphicon glyphicon-comment"></span>
                        </span>
                    </aside>
                    <h3 class="blogpost-title">
                        {{oPost.title|safe}}
                    </h3>
                    <span class="label label-default">#foo</span>
                    <span class="label label-success">#hashTag</span>
                    <div class="blogpost-preview ui-transition ui-background" data-background="/lib/bundles/blog/img/icon.png" data-background-position="center center" data-background-repeat="no-repeat">
                        <div class="blogpost-intro targetToShow transparentBlackBg blackTextShadow text-center">
                            <span>{{oPost.content|safe|Substr: "0,96"}}</span>
                        </div>
                    </div>
                    <footer><span class="ui-timestamp pull-right" data-timestamp="{{oPost.created}}"></span></footer>
                </article>
               
                {% endfor %}
            {% endif %}
            </div>
        </div>
        
    </div>
</div>
{% endblock %}
