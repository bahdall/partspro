<?php

class DefaultController extends Controller
{

	/**
	 * @return array
	 */
	public function actions()
	{
		return array(
			'captcha'=>array(
				'class'=>'CCaptchaAction',
			),
		);
	}

	/**
	 * Display feedback form
	 */
	public function actionIndex()
	{
		Yii::import('feedback.models.FeedbackForm');
		$model = new FeedbackForm;

		if(isset($_POST['FeedbackForm']))
			$model->attributes = $_POST['FeedbackForm'];

		if(Yii::app()->request->isPostRequest && $model->validate())
		{
			$model->sendMessage();
			Yii::app()->request->redirect($this->createUrl('index'));
		}

		$this->render('index', array(
			'model'=>$model
		));
	}
    
    
    
    public function actionCallback()
	{
		Yii::import('feedback.models.CallbackForm');
		$model = new CallbackForm;
        $success = false;
        

		if(isset($_POST['CallbackForm']))
			$model->attributes = $_POST['CallbackForm'];

		if(Yii::app()->request->isPostRequest && $model->validate())
		{
			$model->sendMessage();
            $model = new OrderDetailForm;
            $success = true;
		}

		$this->render('callback', array(
			'model'=>$model,
            'success' => $success,
		));
        
	}
    
    
    
    public function actionOrderDetail()
	{
		Yii::import('feedback.models.OrderDetailForm');
		$model = new OrderDetailForm;
        $success = false;

		if(isset($_POST['OrderDetailForm']))
			$model->attributes = $_POST['OrderDetailForm'];

		if(Yii::app()->request->isPostRequest && $model->validate())
		{
			$model->sendMessage();
            $model = new OrderDetailForm;
            $success = true;
			//Yii::app()->request->redirect($this->createUrl('/feedback/order-detail'));
		}

		$this->render('orderdetail', array(
			'model'=>$model,
            'success' => $success,
		));
        
	}
    
    
    public function actionEvacuator()
    {
        Yii::import('feedback.models.EvacuatorForm');
		$model = new EvacuatorForm;
        $success = false;

		if(isset($_POST['EvacuatorForm']))
			$model->attributes = $_POST['EvacuatorForm'];

		if(Yii::app()->request->isPostRequest && $model->validate())
		{
			$model->sendMessage();
            $model = new EvacuatorForm;
            $success = true;
			//Yii::app()->request->redirect($this->createUrl('/feedback/order-detail'));
		}

		$this->render('evacuator', array(
			'model'=>$model,
            'success' => $success,
		));
    }
    
    public function actionOrdercar()
    {
        Yii::import('feedback.models.OrderCarForm');
		$model = new OrderCarForm;
        $success = false;

		if(isset($_POST['OrderCarForm']))
			$model->attributes = $_POST['OrderCarForm'];

		if(Yii::app()->request->isPostRequest && $model->validate())
		{
			$model->sendMessage();
            $model = new OrderCarForm;
            $success = true;
			//Yii::app()->request->redirect($this->createUrl('/feedback/order-detail'));
		}

		$this->render('ordercar', array(
			'model'=>$model,
            'success' => $success,
		));
    }

}
