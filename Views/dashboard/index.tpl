<div class="col-lg-4">
    <div id="reminder">
        <h4>Tâches restantes</h4>
        <div class="row">
            <div class="col-md-10">
                <span class="reminder-number"> <span class="glyphicon glyphicon-globe"></span> 3
                </span> <span class="reminder-txt">Poste(s) en attente de publication</span>
            </div>
            <div class="col-md-1">
                <a class="btn btn-warning">go</a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-10">
                <span class="reminder-number"> <span class="glyphicon glyphicon-comment"></span> 1
                </span> <span class="reminder-txt">Commentaire(s) en attente</span>
            </div>
            <div class="col-md-1">
                <a class="btn btn-warning">go</a>
            </div>
        </div>
    </div>
    <!-- End .reminder -->
    <h1>Visites</h1>
    <div id="visitors-chart" class="ui-chart" class="col-md-12"></div>
    <ul class="chartShortcuts list-unstyled col-md-12">
        <li><a href="#"> <span class="head">Total Visits</span> <span class="number">509</span>
        </a></li>
        <li><a href="#"> <span class="head">Uniqiue Visits</span> <span class="number">309</span>
        </a></li>
        <li><a href="#"> <span class="head">External Visits</span> <span class="number">109</span>
        </a></li>
        <li><a href="#"> <span class="head">Impressions</span> <span class="number">325</span>
        </a></li>
    </ul>
</div>
<div class="col-lg-8">
    <p>Ici mettre des gros liens sur des tuiles avec des infos en preview ainsi que des statistiques (utiliser GA??)</p>
    <table id="post-last-items" class="table table-responsive">
        <thead>
            <tr>
                <th><input type="checkbox" class="ui-select-all ui-toggle" data-toggle-selector=".ui-delete-posts"
                    data-checkbox-class="posts" data-container="#post-last-items" /></th>
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
        <tbody id="postList" class="ui-loadable" data-entity="Post" data-view="blog/posts/list.tpl" data-parameters=""
            data-bundle="crud" data-controller="list" data-action="index">
        </tbody>
    </table>
</div>
