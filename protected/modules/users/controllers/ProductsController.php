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
		Yii::import('application.modules.users.forms.ChangePasswordForm');
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

}
