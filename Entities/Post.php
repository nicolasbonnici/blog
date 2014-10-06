<?php

namespace bundles\blog\Entities;

/**
 * Description of Pos
 *
 * @author infradmin
 */
class Post extends \Library\Core\Entity {

    const ENTITY = 'Post';
    const TABLE_NAME = 'post';
    const PRIMARY_KEY = 'idpost';

    /**
     * Object caching duration in seconds
     * @var integer
     */
    protected $iCacheDuration = 50;

    protected $bIsSearchable = true;

    protected $aLinkedEntities = array(
        'category' => array(
            'loadByDefault' => false,
            'relationship' => 'oneToOne', // @see oneToOne|manyToOne|manyToMany
    		'entity' => 'Category',
    		'mappedByField' => 'category_idcategory'
        ),
        'tags' => array(
            'loadByDefault' => false,
            'relationship' => 'oneToMany', // @see oneToOne|manyToOne|manyToMany
    		'entity' => 'Tags',
    		'mappedByField' => 'category_idcategory'
        )
    );
}

