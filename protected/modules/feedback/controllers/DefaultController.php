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
        

		if(isset($_POST['CallbackForm']))
			$model->attributes = $_POST['CallbackForm'];

		if(Yii::app()->request->isPostRequest && $model->validate())
		{
			$model->sendMessage();
			Yii::app()->request->redirect($this->createUrl('callback'));
		}

		$this->render('callback', array(
			'model'=>$model
		));
        
	}

}
