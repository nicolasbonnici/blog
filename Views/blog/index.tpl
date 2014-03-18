{% extends 'layout.tpl' %}

{% block favicon %}/lib/img/aps/blog/icon.png{% endblock favicon %}
{% block meta_title %}Blogging app{% endblock meta_title %}
{% block meta_description %}A simple blogging application{% endblock meta_description %}

{% block js %}
<script type="text/javascript" src="/lib/plugins/bootstrap-editable/js/bootstrap-editable.min.js"></script>
<script type="text/javascript" src="/lib/plugins/summernote/js/summernote.js"></script>
<script type="text/javascript" src="/lib/plugins/moment/js/moment.min.js"></script>
<script type="text/javascript" src="/lib/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>

<script type="text/javascript" src="/lib/plugins/charts/flot/jquery.flot.js"></script>
<script type="text/javascript" src="/lib/plugins/charts/flot/jquery.flot.grow.js"></script>
<script type="text/javascript" src="/lib/plugins/charts/flot/jquery.flot.pie.js"></script>
<script type="text/javascript" src="/lib/plugins/charts/flot/jquery.flot.tooltip_0.4.4.js"></script>
<script type="text/javascript" src="/lib/plugins/charts/flot/jquery.flot.orderBars.js"></script>
<script type="text/javascript" src="/lib/js/core/charts.core.js"></script>

<script type="text/javascript">
$(document).ready(function() {
    
    // Init charts
    oCharts = $.fn.Charts();
    oCharts.initCharts();
    $(document).ajaxStop(function() {
        oCharts.initCharts();
    });
    
    // Show the delete btn for several checked checkbox
    $('body').on('.ui-select.posts', 'click', function() {
       alert($('.ui-select.posts:checked').size());
       if ($('.ui-select.posts:checked').size() > 1) {
           $('.ui-delete-posts').removeClass('hide');
       } else {
           $('.ui-delete-posts').addClass('hide');
       }
    });
});
</script>
{% endblock %}

{% block css %}
<link href="/lib/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="/lib/plugins/bootstrap-editable/css/bootstrap-editable.css" rel="stylesheet">
<link href="/lib/plugins/summernote/css/summernote.css" rel="stylesheet">
<link href="/lib/plugins/summernote/css/summernote-bs3.css" rel="stylesheet">
<style>
#reminder div.row {
    margin: 0 0 5px 0;
}
span.reminder-number {
    font-size: 22px;
    font-weight: bold;
}
span.reminder-txt {}

#visitors-chart {
    height: 350px;
}
</style>
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

	<div class="row clearfix transparentBlackBg rounded well ui-transition ui-shadow">
		<div class="col-md-2 column">
            <img src="/lib/img/apps/blog/icon.png" alt="App icon" />
        </div>
		<div class="col-md-10 column">
    		<h1 class="showOnHover">
    			Blogging app <small class="targetToShow">1.0</small>
    		</h1><br />
            <ul class="nav nav-pills transparentBlackBg rounded">
              <li class="active">
                <a href="#" class="ui-sendxhr" data-url="/backend/blog/dashboard/" data-selector="#dashboard" role="button">
                    <span class="glyphicon glyphicon-home"></span> <strong>Dashboard</strong>
                </a>
              </li>
              <li>
                <a href="#" class="ui-sendxhr refreshOnCallback" data-url="/backend/blog/posts/" data-selector="#dashboard" role="button" title="Gérer les posts">
                    <span class="glyphicon glyphicon-globe"></span> <strong>Posts</strong>
                </a>
              </li>
              <li><a href="#"><span class="glyphicon glyphicon-folder-open"></span> <strong>Categories</strong></a></li>
              <li><a href="#"><span class="glyphicon glyphicon-comment"></span> <strong>Comments</strong></a></li>
              <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                  <span class="glyphicon glyphicon-cog"></span> <strong>Settings</strong> <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="#" type="button" class="ui-sendxhr" data-url="/backend/blog/createblog/" data-selector="#modal-post-content" role="button" data-toggle="modal">
                            <span class="glyphicon glyphicon-file"></span> Bla bla
                        </a>
                    </li>
                    <li>
                        <a href="#" type="button" class="ui-sendxhr" data-url="/backend/blog/posts/" data-selector="#dashboard" role="button">
                            <span class="glyphicon glyphicon-file"></span> Gérer
                        </a>
                    </li>
                </ul>
              </li>              
            </ul>
		</div>
		<div id="dashboard">
        </div>
	</div>

{% endblock %}

