<?php
namespace bundles\blog\Controllers;

/**
 * Blog HomeController
 * A simple but powerfull blogging app
 *
 * @author Nicolas Bonnici
 */
class HomeController extends \Library\Core\Auth
{

    public function __preDispatch()
    {}

    public function __postDispatch()
    {}

    public function indexAction()
    {
        $this->oView->render($this->aView, 'blog/index.tpl');
    }
}

?>
