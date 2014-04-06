<?php
namespace bundles\blog\Controllers;

/**
 * Blog PostsController
 * A simple but powerfull blogging app
 *
 *
 * @author Nicolas Bonnici
 */
class PostsController extends \Library\Core\Auth
{

    public function __preDispatch()
    {}

    public function __postDispatch()
    {}

    public function indexAction()
    {
        $this->render('posts/index.tpl');
    }

    public function createAction()
    {
        $this->render('posts/create.tpl');
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
        $this->render('posts/read.tpl');
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
        $this->render('posts/update.tpl');
    }

    public function deleteAction()
    {
        if (isset($this->aParams['pk']) && intval($this->aParams['pk']) > 0) {
            $this->aView['pk'] = $this->aParams['pk'];
        }
        $this->render('posts/delete.tpl');
    }
}

?>
