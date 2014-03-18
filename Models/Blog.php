<?php

namespace modules\backend\Models;

class Blog  extends \Library\Core\Crud {

    /**
     * Post available status
     */
    const POST_STATUS_PUBLISHED        = 'published';
    const POST_STATUS_NEVER_PUBLISHED  = 'neverpublished'; // @todo jamais publié
    const POST_STATUS_UNPUBLISHED      = 'unpublished';
    const POST_STATUS_DELETED          = 'deleted';
    const POST_STATUS_NEEDAUTH         = 'needauth';    // @todo pas accessible sans session
    const POST_STATUS_PRIVATE          = 'private';     // @todo accessible uniquement pour l'auteur

    /**
     * Instance constructor overide
     */
    public function __construct($iPrimaryKey = null, \app\Entities\User $oUser)
    {
        assert('is_null($iPrimaryKey) || intval($iPrimaryKey) > 0');
        if (! $oUser->isLoaded()) {
            throw new BlogModelException('Blog need a valid user instance, no user provided.');
        } elseif (!$oUser instanceof \app\Entities\User || !$oUser->isLoaded()) {
            throw new BlogModelException('Blog need a valid user instance, no user provided.');
        } else {
            parent::__construct('Post', $iPrimaryKey, $oUser);
        }
    }
}

class BlogModelException extends \Exception {}
