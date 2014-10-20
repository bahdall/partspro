<?php

/**
 * Profile, order and other user data.
 */
class ProductsController extends Controller
{

	/**
	 * Check if user is authenticated
	 * @return bool
	 * @throws CHttpException
	 */
	public function beforeAction($action)
	{
		if(Yii::app()->user->isGuest || !Yii::app()->user->checkAccess('Customers') )
			throw new CHttpException(404, Yii::t('UsersModule.core', 'Ошибка доступа.'));
		return true;
	}

	/**
	 * Display profile start page
	 */
	public function actionIndex()
	{
		//Yii::import('application.modules.users.forms.ChangePasswordForm');
		$request=Yii::app()->request;
        
        $model = new StoreProduct(null);
        
        $products = new StoreProduct(null);
        
        $cr=new CDbCriteria;
        $cr->condition = "t.user_id = ".Yii::app()->user->id;
        $model->getDbCriteria()->mergeWith($cr); ;
        
        $products = new CActiveDataProvider($model, array(
			// Set id to false to not display model name in
			// sort and page params
			'id'=>false,
		));
        
		$this->render('index', array(
			'model'=>$model,
            'products'=>$products,
		));
	}
    
    
    public function actionAdd()
    {
        $this->actionUpdate(true);
    }

	/**
	 * Create/update product
	 * @param bool $new
	 * @throws CHttpException
	 */
	public function actionUpdate($new = false)
	{
		if ($new === true)
			$model = new StoreProduct;
		else
			$model = StoreProduct::model()->language($_GET)->findByPk($_GET['id']);

		if (!$model || ($model->user_id &&$model->user_id != Yii::app()->user->id) )
			throw new CHttpException(404, Yii::t('StoreModule.admin', 'Продукт не найден.'));

		// Apply use_configurations, configurable_attributes, type_id
        if( ! $model->type)        
		  $model->attributes = array('type_id'=>7,'use_configurations'=>0);

		
		// Set main category id to have categories drop-down selected value
        
		if($model->mainCategory)
			$model->main_category_id = $model->mainCategory->id;

		// Or set selected category from type pre-set.
		if($model->type && !Yii::app()->request->isPostRequest && $model->isNewRecord)
			$model->main_category_id = $model->type->main_category;

		// Set configurable attributes on new record
		if($model->isNewRecord)
		{
			if($model->use_configurations && isset($_GET['StoreProduct']['configurable_attributes']))
				$model->configurable_attributes = $_GET['StoreProduct']['configurable_attributes'];
		}

		$form = new CForm('application.modules.users.views.products.productForm', $model);

		

		if (Yii::app()->request->isPostRequest)
		{
			$model->attributes = $_POST['StoreProduct'];
            $model->main_category_id = 240;

			// Handle related products
			$model->setRelatedProducts(Yii::app()->getRequest()->getPost('RelatedProductId', array()));

			if ($model->validate() && $this->validateAttributes($model))
			{
				$model->save();

				// Process categories
				$mainCategoryId = 240;

				$model->setCategories(Yii::app()->request->getPost('categories', array()), $mainCategoryId);

				// Process attributes
				$this->processAttributes($model);
                
				// Handle images
				$this->handleUploadedImages($model);
                
				// Set main image
				$this->updateMainImage($model);

				// Update image titles
				$this->updateImageTitles();

				$model->save();

				$this->addFlashMessage(Yii::t('core', 'Изменения успешно сохранены'));
/*
				if (isset($_POST['REDIRECT']))
					$this->smartRedirect($model);
				else
					$this->redirect(array('index'));*/
			}
		}

		$this->render('update', array(
			'model'=>$model,
			'form'=>$form,
		));
	}
    
    
    
    
    /**
	 * Delete products
	 * @param array $id
	 */
	public function actionDelete($id = array())
	{
		$model = StoreProduct::model()->findAllByPk($_REQUEST['id']);

		if (!empty($model))
		{
			foreach($model as $page)
				$page->delete();
		}

		if (!Yii::app()->request->isAjaxRequest)
			$this->redirect('index');
	}

	/**
	 * Validate required store attributes
	 * @param StoreProduct $model
	 * @return bool
	 */
	public function validateAttributes(StoreProduct $model)
	{
		$attributes = $model->type->storeAttributes;

		if(empty($attributes) || $model->use_configurations)
			return true;

		$errors = false;
		foreach($attributes as $attr)
		{
			if($attr->required && !isset($_POST['StoreAttribute'][$attr->name]))
			{
				$errors = true;
				$model->addError($attr->name, Yii::t('StoreModule.admin', 'Поле %s обязательно для заполнения', array('%s'=>$attr->title)));
			}
		}

		return !$errors;
	}
    
    
    /**
	 * Save model attributes
	 * @param StoreProduct $model
	 * @return boolean
	 */
	protected function processAttributes(StoreProduct $model)
	{
		$attributes = new CMap(Yii::app()->request->getPost('StoreAttribute', array()));
		if(empty($attributes))
			return false;

		$deleteModel = StoreProduct::model()->findByPk($model->id);
		$deleteModel->deleteEavAttributes(array(), true);

		// Delete empty values
		foreach($attributes as $key=>$val)
		{
			if(is_string($val) && $val === '')
				$attributes->remove($key);
		}

		return $model->setEavAttributes($attributes->toArray(), true);
	}

	/**
	 * Save product variants
	 * @param StoreProduct $model
	 */
	protected function processVariants(StoreProduct $model)
	{
		$dontDelete = array();

		if(!empty($_POST['variants']))
		{
			foreach($_POST['variants'] as $attribute_id=>$values)
			{
				$i=0;
				foreach($values['option_id'] as $option_id)
				{
					// Try to load variant from DB
					$variant = StoreProductVariant::model()->findByAttributes(array(
						'product_id'   => $model->id,
						'attribute_id' => $attribute_id,
						'option_id'    => $option_id
					));
					// If not - create new.
					if(!$variant)
						$variant = new StoreProductVariant;

					$variant->setAttributes(array(
						'attribute_id' => $attribute_id,
						'option_id'    => $option_id,
						'product_id'   => $model->id,
						'price'        => $values['price'][$i],
						'price_type'   => $values['price_type'][$i],
						'sku'          => $values['sku'][$i],
					), false);

					$variant->save(false);
					array_push($dontDelete, $variant->id);
					$i++;
				}
			}
		}

		if(!empty($dontDelete))
		{
			$cr = new CDbCriteria;
			$cr->addNotInCondition('id', $dontDelete);
			$cr->addCondition('product_id='.$model->id);
			StoreProductVariant::model()->deleteAll($cr);
		}else
			StoreProductVariant::model()->deleteAllByAttributes(array('product_id'=>$model->id));
	}

	/**
	 * Save product configurations
	 * @param StoreProduct $model
	 * @return mixed
	 */
	protected function processConfigurations(StoreProduct $model)
	{
		$productPks = Yii::app()->request->getPost('ConfigurationsProductGrid_c0', array());

		// Clear relations
		Yii::app()->db->createCommand()->delete('StoreProductConfigurations', 'product_id=:id', array(':id'=>$model->id));

		if(!sizeof($productPks))
			return;

		foreach($productPks as $pk)
		{
			Yii::app()->db->createCommand()->insert('StoreProductConfigurations', array(
				'product_id'      => $model->id,
				'configurable_id' => $pk
			));
		}
	}

	/**
	 * Create gridview for "Related Products" tab
	 * @param int $exclude Product id to exclude from list
	 */
	public function actionApplyProductsFilter($exclude = 0)
	{
		$model = new StoreProduct('search');
		$model->exclude = $exclude;

		if (!empty($_GET['RelatedProducts']))
			$model->attributes = $_GET['RelatedProducts'];

		$this->renderPartial('_relatedProducts', array(
			'model'=>$model,
			'exclude'=>$exclude,
		));
	}

	/**
	 * Render configurations tab gridview.
	 */
	public function actionApplyConfigurationsFilter()
	{
		$product = StoreProduct::model()->findByPk($_GET['product_id']);

		// On create new product
		if(!$product)
		{
			$product = new StoreProduct;
			$product->configurable_attributes = $_GET['configurable_attributes'];
		}

		$this->renderPartial('_configurations', array(
			'product'=>$product,
			'clearConfigurations'=>true // Show all products
		));
	}

	/**
	 * Render comments tab
	 */
	public function actionApplyCommentsFilter()
	{
		$this->renderPartial('_comments', array(
			'model'=>StoreProduct::model()->findByPk($_GET['id'])
		));
	}

	/**
	 * @throws CHttpException
	 */
	public function actionRenderVariantTable()
	{
		$attribute = StoreAttribute::model()
			->findByPk($_GET['attr_id']);

		if(!$attribute)
			throw new CHttpException(404, Yii::t('StoreModule.admin', 'Ошибка загрузки атрибута'));

		$this->renderPartial('variants/_table', array(
			'attribute'=>$attribute
		));
	}

	/**
	 * Load attributes relative to type and available for product configurations.
	 * Used on creating new product.
	 */
	public function actionLoadConfigurableOptions()
	{
		// For configurations that  are available only dropdown and radio lists.
		$cr = new CDbCriteria;
		$cr->addInCondition('StoreAttribute.type', array(StoreAttribute::TYPE_DROPDOWN, StoreAttribute::TYPE_RADIO_LIST));
		$type = StoreProductType::model()->with(array('storeAttributes'))->findByPk($_GET['type_id'], $cr);

		$data = array();
		foreach($type->storeAttributes as $attr)
		{
			$data[] = array(
				'id'=>$attr->id,
				'title'=>$attr->title,
			);
		}

		echo json_encode($data);
	}

	/**
	 * @param $id StoreProductImage id
	 */
	public function actionDeleteImage($id)
	{
		if (Yii::app()->request->getIsPostRequest())
		{
			$model = StoreProductImage::model()->findByPk($id);
			if ($model)
				$model->delete();
		}
	}

	/**
	 * Mass product update is_active
	 */
	public function actionUpdateIsActive()
	{
		$ids       = Yii::app()->request->getPost('ids');
		$status    = (int)Yii::app()->request->getPost('status');
		$models    = StoreProduct::model()->findAllByPk($ids);
		foreach($models as $product)
		{
			if(in_array($status, array(0,1)))
			{
				$product->is_active=$status;
				$product->save();
			}
		}
		echo Yii::t('StoreModule.admin', 'Изменения успешно сохранены.');
	}
    
    
    /**
	 * Assign categories to products
	 */
	public function actionAssignCategories()
	{
		$categories = Yii::app()->request->getPost('category_ids');
		$products   = Yii::app()->request->getPost('product_ids');

		if(empty($categories) || empty($products))
			return;

		$products = StoreProduct::model()->findAllByPk($products);

		foreach ($products as $p)
			$p->setCategories($categories, Yii::app()->request->getPost('main_category'));
	}

	/**
	 * @param StoreProduct $model
	 */
	public function updateMainImage(StoreProduct $model)
	{
		if(Yii::app()->request->getPost('mainImageId'))
		{
			// Clear current main image
			StoreProductImage::model()->updateAll(array('is_main'=>0), 'product_id=:pid', array(':pid'=>$model->id));
			// Set new main image
			StoreProductImage::model()->updateByPk(Yii::app()->request->getPost('mainImageId'),array('is_main'=>1));
		}
	}

	/**
	 * @param StoreProduct $model
	 */
	public function handleUploadedImages(StoreProduct $model)
	{
		$images = CUploadedFile::getInstancesByName('StoreProductImages');
        Yii::import('application.modules.store.components.StoreUploadedImage');
        
		if($images && sizeof($images) > 0)
		{
			/** var $image CUploadedFile */
			foreach($images as $image)
			{
			 
			    $hasErrors = StoreUploadedImage::hasErrors($image); 
				if( !$hasErrors  )
                {
                    $model->addImage($image);                    
                }
                else
                {
                    $this->addFlashMessage(Yii::t('StoreModule.admin', 'Ошибка загрузки изображения {name}', array('{name}'=>$image->getName())));
                }				
				                
            }
		}
        
	}
    
    
    /**
	 * Updates image titles
	 */
	public function updateImageTitles()
	{
		if(sizeof(Yii::app()->request->getPost('image_titles', array())))
		{
			foreach(Yii::app()->request->getPost('image_titles', array()) as $id=>$title)
			{
				StoreProductImage::model()->updateByPk($id, array(
					'title'=>$title
				));
			}
		}
	}

}
