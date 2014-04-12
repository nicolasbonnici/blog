<?php
namespace bundles\blog\Controllers;

/**
 * Blog DashController
 * A simple but powerfull blogging app
 *
 *
 * @author Nicolas Bonnici
 */
class DashboardController extends \Library\Core\Auth
{

    public function __preDispatch()
    {}

    public function __postDispatch()
    {}

    public function indexAction()
    {
        $this->oView->render($this->aView, 'blog/dashboard.tpl');
    }
}

?>
