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
        if (isset($this->_params['idpost']) && intval($this->_params['idpost']) > 0) {
            $oBlogModel = new \bundles\blog\Models\Blog(intval($this->_params['idpost']), $this->oUser);
            $oPost = $oBlogModel->read();
            if (! is_null($oPost) && $oPost->isLoaded()) {
                $this->_view['oPost'] = $oPost;
            }
        }
        $this->render('posts/read.tpl');
    }

    public function updateAction()
    {
        if (isset($this->_params['idpost']) && intval($this->_params['idpost']) > 0) {
            $oBlogModel = new \bundles\blog\Models\Blog(intval($this->_params['idpost']), $this->oUser);
            $oPost = $oBlogModel->read();
            if (! is_null($oPost) && $oPost->isLoaded()) {
                $this->_view['oPost'] = $oPost;
            }
        }
        $this->render('posts/update.tpl');
    }

    public function deleteAction()
    {
        if (isset($this->_params['pk']) && intval($this->_params['pk']) > 0) {
            $this->_view['pk'] = $this->_params['pk'];
        }
        $this->render('posts/delete.tpl');
    }
}

?>
