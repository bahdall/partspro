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

		if (!$model)
			throw new CHttpException(404, Yii::t('StoreModule.admin', 'Продукт не найден.'));

		// Apply use_configurations, configurable_attributes, type_id
		$model->type_id = 7;

		
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

			// Handle related products
			$model->setRelatedProducts(Yii::app()->getRequest()->getPost('RelatedProductId', array()));

			if ($model->validate() && $this->validateAttributes($model))
			{
				$model->save();

				// Process categories
				$mainCategoryId = 1;
				if(isset($_POST['StoreProduct']['main_category_id']))
					$mainCategoryId=$_POST['StoreProduct']['main_category_id'];

				$model->setCategories(Yii::app()->request->getPost('categories', array()), $mainCategoryId);

				// Process attributes
				$this->processAttributes($model);

				// Process variants
				$this->processVariants($model);

				// Process configurations
				$this->processConfigurations($model);

				// Handle images
				$this->handleUploadedImages($model);

				// Set main image
				$this->updateMainImage($model);

				// Update image titles
				$this->updateImageTitles();

				$model->save();

				$this->setFlashMessage(Yii::t('StoreModule.admin', 'Изменения успешно сохранены'));

				if (isset($_POST['REDIRECT']))
					$this->smartRedirect($model);
				else
					$this->redirect(array('index'));
			}
		}

		$this->render('update', array(
			'model'=>$model,
			'form'=>$form,
		));
	}

}
