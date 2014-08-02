{% extends 'layout.tpl' %} 

{% block favicon %}/lib/bundles/{{sBundle}}/img/icon.png{% endblock favicon %} 
{% block meta_title %}Blogging app{% endblock meta_title %}
{% block meta_description %}A simple blogging application{% endblock meta_description %}


{% block js %}
<script type="text/javascript" src="/lib/sociableUx/js/charts.core.js"></script>
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
        <div class="col-md-8 col-md-offset-2 well">
            <h1>
                <span class="glyphicon glyphicon-globe"></span> nbonnici.info
                <small>Weblog autours des technologies du web</small>
                <br />
                <span class="label label-success">#PHP</span>
                <span class="label label-default">#Javascript</span>
                <span class="label label-primary">#Python</span>
                <span class="label label-success">#Security</span>
                <span class="label label-info">#HTML5</span>
                <span class="label label-warning">#WebGl</span>
                <span class="label label-danger">#NodeJs</span>
            </h1>
        </div>
        
        <div id="blogposts" class="col-md-8 col-md-offset-2 well">
            <div class="row">
            {% if oPosts|Exists %} 
                {% for oPost in oPosts %}
               
                <article class="blogpost col-md-3 showOnHover whiteBg ui-transition">
                    <h3 class="blogpost-title">
                        {{oPost.title|safe}}&nbsp;
                        <span class="label label-default">
                            4 <span class="glyphicon glyphicon-comment"></span>
                        </span>
                    </h3>
                    <div class="blogpost-preview ui-background" data-background="/lib/bundles/blog/img/icon.png" data-background-position="center center" data-background-repeat="no-repeat">
                        <aside class="blogpost-infos pull-right">
                            <span class="label label-default">#foo</span>
                            <span class="label label-success">#hashTag</span>
                        </aside>
                        <div class="blogpost-intro targetToShow fullWidth transparentBlackBg blackTextShadow text-center">
                            <p>{{oPost.content|safe|Substr: "0,96"}}</p>
                        </div>
                    </div>
                </article>
               
                {% endfor %}
            {% endif %}
            </div>
        </div>
        
    </div>
</div>
{% endblock %}
