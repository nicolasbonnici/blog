<?php
namespace bundles\blog\Models;

/**
 * Frontend blog bundle model class
 * @author Nicolas Bonnici nicolasbonnici@gmail.com
 *
 */

class Blog extends \Library\Core\Crud
{

    /**
     * Post available status
     */
    const POST_STATUS_PUBLISHED = 'published';
    const POST_STATUS_UNPUBLISHED = 'unpublished';
    const POST_STATUS_NEVER_PUBLISHED = 'neverpublished'; // @todo jamais publié
    const POST_STATUS_DELETED = 'deleted';
    const POST_STATUS_NEEDAUTH = 'needauth'; // @todo pas accessible sans session
    const POST_STATUS_PRIVATE = 'private'; // @todo accessible uniquement pour l'auteur

    /**
     * Instance constructor overide
     */
    public function __construct($iPrimaryKey = null)
    {
        assert('is_null($iPrimaryKey) || intval($iPrimaryKey) > 0');
        parent::__construct('bundles\blog\Entities\Post', 'bundles\blog\Entities\Collection\PostCollection', $iPrimaryKey);
    }

    /**
     * Load last posts for the blog frontend
     *
     * @param integer $iOffet
     * @param integer $iLimit
     * @return boolean          TRUE if at leat one post was found otherwhise FALSE
     */
    public function loadLastPosts($iOffet = 0, $iLimit = 10)
    {
        try {
            // Reset attribute just in case of he was already hydratate by an other previous call
            $this->oEntities->reset();

            $this->oEntities->loadByParameters(
                array(
                    'status' => self::POST_STATUS_PUBLISHED
                ),
                array(
                    'created' => 'DESC'
                ),
                array(
                    $iOffet,
                    $iLimit
                )
            );

            return ($this->oEntities->count() > 0);
        } catch (\Library\Core\EntitiesCollectionException $oEntitiesCollectionException) {
        	return false;
        }
    }

    public function loadLastPostFromTag()
    {

    }
}

class BlogModelException extends \Exception
{
}
