<?php

Yii::import('application.modules.pages.models.PageTranslate');
Yii::import('application.modules.pages.models.PageCategory');

/**
 * This is the model class for table "Pages".
 *
 * The followings are the available columns in table 'Pages':
 * @property integer $id
 * @property integer $user_id
 * @property integer $category_id
 * @property string $title
 * @property string $url
 * @property string $short_description
 * @property string $full_description
 * @property string $meta_title
 * @property string $meta_description
 * @property string $meta_keywords
 * @property string $created
 * @property string $updated
 * @property string $publish_date
 * @property string $status
 * @property string $layout
 * @property string $view
 * @property PageTranslate $translate
 *
 * TODO: Set DB indexes
 */
class Page extends BaseModel
{

	public $_statusLabel;

	/**
	 * Status to allow display page on the front.
	 */
	public $publishStatus = 'published';

	/**
	 * Multilingual attrs
	 */
	public $title;
	public $short_description;
	public $full_description;
	public $meta_title;
	public $meta_description;
	public $meta_keywords;
    public $preview_img;

	/**
	 * Name of the translations model.
	 */
	public $translateModelName = 'PageTranslate';

	/**
	 * Returns the static model of the specified AR class.
	 * @return Page the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'Page';
	}

	public function defaultScope()
	{
		return array(
			'order'=>'publish_date DESC',
		);
	}

	public function scopes()
	{
		return array(
			'published'=>array(
				'condition'=>'publish_date <= :date AND status = :status',
				'params'=>array(
					':date'=>date('Y-m-d H:i:s'),
					':status'=>$this->publishStatus
				),
			),
		);
	}

	/**
	 * Find page by url.
	 * Scope.
	 * @param string Page url
	 * @return Page
	 */
	public function withUrl($url)
	{
		$this->getDbCriteria()->mergeWith(array(
			'condition'=>'url=:url',
			'params'=>array(':url'=>$url)
		));

		return $this;
	}

	/**
	 * Filter pages by category.
	 * Scope.
	 * @param PageCategory|int $category
	 * @return Page
	 */
	public function filterByCategory($category)
	{
		if($category instanceof PageCategory)
			$category=$category->id;

		$this->getDbCriteria()->mergeWith(array(
			'condition'=>'category_id=:category',
			'params'=>array(':category'=>$category)
		));

		return $this;
	}


	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		return array(
			array('short_description, full_description, category_id ', 'type', 'type'=>'string'),
			array('status', 'in', 'range'=>array_keys(self::statuses())),
			array('title, status, publish_date', 'required'),
			array('url', 'LocalUrlValidator'),
            array('preview_img','file','types'=>'jpg,gif,png', 'safe'=>true, 'maxSize'=>'204800', 'allowEmpty'=>true, 'maxFiles'=>1,'on'=>'insert,update'),
			array('publish_date', 'date', 'format'=>'yyyy-MM-dd HH:mm:ss'),
			array('title, url, meta_title, meta_description, meta_keywords, publish_date, layout, view', 'length', 'max'=>255),
			// The following rule is used by search().
			array('id, user_id, title, url, short_description, full_description, meta_title, meta_description, meta_keywords, created, updated, publish_date', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		return array(
			'translate'=>array(self::HAS_ONE, $this->translateModelName, 'object_id'),
			'author'=>array(self::BELONGS_TO, 'User', 'user_id'),
			'category'=>array(self::BELONGS_TO, 'PageCategory', 'category_id')
		);
	}

	/**
	 * @return array
	 */
	public function behaviors()
	{
		return array(
			'STranslateBehavior'=>array(
				'class'=>'ext.behaviors.STranslateBehavior',
				'translateAttributes'=>array(
					'title',
					'short_description',
					'full_description',
					'meta_title',
					'meta_description',
					'meta_keywords',
				),
			),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'user_id' => Yii::t('PagesModule.core', 'Автор'),
			'category_id' => Yii::t('PagesModule.core', 'Категория'),
			'title' => Yii::t('PagesModule.core', 'Заглавление'),
			'url' => Yii::t('PagesModule.core', 'URL'),
			'short_description' => Yii::t('PagesModule.core', 'Краткое описание'),
			'full_description' => Yii::t('PagesModule.core', 'Содержание'),
			'meta_title' => Yii::t('PagesModule.core', 'Meta Title'),
			'meta_description' => Yii::t('PagesModule.core', 'Meta Description'),
			'meta_keywords' => Yii::t('PagesModule.core', 'Meta Keywords'),
			'created' => Yii::t('PagesModule.core', 'Дата создания'),
			'updated' => Yii::t('PagesModule.core', 'Дата обновления'),
			'publish_date' => Yii::t('PagesModule.core', 'Дата публикации'),
			'status' => Yii::t('PagesModule.core', 'Статус'),
			'layout' => Yii::t('PagesModule.core', 'Макет'),
			'view' => Yii::t('PagesModule.core', 'Шаблон'),
            'preview_img' => Yii::t('PagesModule.core', 'Картинка Анонса'),
            'detail_img' => Yii::t('PagesModule.core', 'Детальная Картинка'),
		);
	}

	/**
	 * @return array
	 */
	public static function statuses()
	{
		return array(
			'published'=>Yii::t('PagesModule.core', 'Опубликован'),
			'waiting'=>Yii::t('PagesModule.core', 'Ждет одобрения'),
			'draft'=>Yii::t('PagesModule.core', 'Черновик'),
			'archive'=>Yii::t('PagesModule.core', 'Архив'),
		);
	}

	/**
	 * @return mixed
	 */
	public function getStatusLabel()
	{
		$statuses = $this->statuses();
		return $statuses[$this->status];
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions. Used in admin search.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		$criteria=new CDbCriteria;

		$criteria->with = array('author','translate');

		$criteria->compare('t.id',$this->id);
		$criteria->compare('t.category_id',$this->category_id);
		$criteria->compare('author.username',$this->user_id,true);
		$criteria->compare('translate.title',$this->title,true);
		$criteria->compare('t.url',$this->url,true);
		$criteria->compare('translate.short_description',$this->short_description,true);
		$criteria->compare('translate.full_description',$this->full_description,true);
		$criteria->compare('translate.meta_title',$this->meta_title,true);
		$criteria->compare('translate.meta_description',$this->meta_description,true);
		$criteria->compare('translate.meta_keywords',$this->meta_keywords,true);
		$criteria->compare('t.created',$this->created,true);
		$criteria->compare('t.updated',$this->updated,true);
		$criteria->compare('t.publish_date',$this->publish_date,true);
		$criteria->compare('t.status',$this->status);

		// Create sorting by translation title
		$sort=new CSort;
		$sort->attributes=array(
			'*',
			'title' => array(
				'asc'   => 'translate.title',
				'desc'  => 'translate.title DESC',
			)
		);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'sort'=>$sort,
			'pagination'=>array(
				'pageSize'=>20,
			)
		));
	}

	/**
	 * @return bool
	 */
	public function beforeSave()
	{
		if(!$this->created && $this->isNewRecord)
			$this->created = date('Y-m-d H:i:s');
		if(!$this->updated)
			$this->updated = date('Y-m-d H:i:s');

		if (!Yii::app()->user->isGuest)
			$this->user_id = Yii::app()->user->id;

		if (empty($this->url))
		{
			// Create slug
			Yii::import('ext.SlugHelper.SlugHelper');
			$this->url = SlugHelper::run($this->title);
		}

		// Check if url available
		if($this->isNewRecord)
		{
			$test = Page::model()
				->withUrl($this->url)
				->count();
		}
		else
		{
			$test = Page::model()
				->withUrl($this->url)
				->count('id!=:id', array(':id'=>$this->id));
		}

		if ($test > 0)
			$this->url .= '-'.date('YmdHis');
        
        if(!parent::beforeSave())
            return false;
        
        if(($this->scenario=='insert' || $this->scenario=='update') &&
            ($previewImg=CUploadedFile::getInstance($this,'preview_img'))){
            
            $this->deletePreviewImg(); // старый документ удалим, потому что загружаем новый
 
            $this->preview_img=$previewImg;
            $randomName = strtolower($this->id.'_'.crc32(microtime()).'.'.$this->preview_img->getExtensionName());
            $this->preview_img->saveAs(Yii::getPathOfAlias('webroot.uploads.pages').DIRECTORY_SEPARATOR.$randomName);
            $this->preview_img = $randomName;
        }
        elseif($this->scenario=='update' && ! CUploadedFile::getInstance($this,'preview_img'))
        {
            $this->preview_img = $this->preview_img;
        }
        
        return true;
		
	}
    
    public function deletePreviewImg(){
        $documentPath=Yii::getPathOfAlias('webroot.uploads.pages').DIRECTORY_SEPARATOR.
            $this->preview_img;
        if(is_file($documentPath))
            @unlink($documentPath);
    }
    
    
    protected function beforeDelete(){
        if(!parent::beforeDelete())
            return false;
        $this->deletePreviewImg(); // удалили модель? удаляем и файл
        return true;
    }

	/**
	 * Get url to view object on front
	 * @return string
	 */
	public function getViewUrl()
	{
		return Yii::app()->createUrl('pages/pages/view', array('url'=>$this->url));
	}
    
    
    public function getImage($size = false, $resizeMethod = false, $random = false)
	{
		if($size !== false)
		{
			$thumbPath = Yii::getPathOfAlias('webroot.uploads.pages.Thumbs').'/'.$size;
			if(!file_exists($thumbPath))
				mkdir($thumbPath, 0777, true);

			// Path to source image
			$fullPath  = Yii::getPathOfAlias('webroot.uploads.pages').'/'.$this->preview_img;
			// Path to thumb
			$thumbPath = $thumbPath.'/'.$this->preview_img;

			if(!file_exists($thumbPath))
			{
				// Resize if needed
				Yii::import('ext.phpthumb.PhpThumbFactory');
				$sizes  = explode('x', $size);
				$thumb  = PhpThumbFactory::create($fullPath);

				if($resizeMethod === false)
					$resizeMethod = 'resize';
				$thumb->$resizeMethod($sizes[0],$sizes[1])->save($thumbPath);
			}

			return '/uploads/pages/Thumbs/'.$size.'/'.$this->preview_img;
		}

		if ($random === true)
			return '/uploads/pages/'.$this->preview_img.'?'.rand(1, 10000);
		return '/uploads/pages/'.$this->preview_img;
	}

}
