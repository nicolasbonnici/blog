<?php
namespace bundles\blog\Controllers;

use \Library\Core\Auth as Auth;


/**
 * Blog PostsController
 * A simple but powerfull blogging app
 *
 *
 * @author Nicolas Bonnici
 */
class PostsController extends Auth
{

    public function __preDispatch()
    {}

    public function __postDispatch()
    {}

    public function indexAction()
    {
        $this->oView->render($this->aView, 'posts/index.tpl');
    }

    public function createAction()
    {
        $this->oView->render($this->aView, 'posts/create.tpl');
    }

    public function readAction()
    {
        if (isset($this->aParams['idpost']) && intval($this->aParams['idpost']) > 0) {
            $oBlogModel = new \bundles\blog\Models\Blog(intval($this->aParams['idpost']), $this->oUser);
            $oPost = $oBlogModel->read();
            if (! is_null($oPost) && $oPost->isLoaded()) {
                $this->aView['oPost'] = $oPost;
            }
        }
        $this->oView->render($this->aView, 'posts/read.tpl');
    }

    public function updateAction()
    {
        if (isset($this->aParams['idpost']) && intval($this->aParams['idpost']) > 0) {
            $oBlogModel = new \bundles\blog\Models\Blog(intval($this->aParams['idpost']), $this->oUser);
            $oPost = $oBlogModel->read();
            if (! is_null($oPost) && $oPost->isLoaded()) {
                $this->aView['oPost'] = $oPost;
            }
        }
        $this->oView->render($this->aView, 'posts/update.tpl');
    }

    public function deleteAction()
    {
        if (isset($this->aParams['pk']) && intval($this->aParams['pk']) > 0) {
            $this->aView['pk'] = $this->aParams['pk'];
        }
        $this->oView->render($this->aView, 'posts/delete.tpl');
    }
}

?>
