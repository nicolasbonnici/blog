<?php
namespace bundles\blog\Controllers;

use \Library\Core\Controller as Controller;

/**
 * Blog HomeController
 * A simple but powerfull blogging app
 *
 * Public Home Controller to render last posts
 *
 * @author Nicolas Bonnici
 */
class HomeController extends Controller
{

    public function __preDispatch()
    {}

    public function __postDispatch()
    {}

    public function indexAction()
    {
        $oBlogModel = new \bundles\blog\Models\Blog();
        $oBlogModel->loadLastPosts();
        $this->aView['oPosts'] = $oBlogModel->getEntities();
        $this->oView->render($this->aView, 'home/index.tpl');
    }
}

