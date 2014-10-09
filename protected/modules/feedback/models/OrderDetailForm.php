<?php

/**
 * Model to handle feedback form
 */
class OrderDetailForm extends CFormModel
{

	/**
	 * @var string
	 */
	public $name;

	/**
	 * @var string
	 */
	public $email;
    
    /**
	 * @var string
	 */
	public $phone;

	/**
	 * @var string
	 */
	public $carInfo;

	/**
	 * @var string
	 */
	public $yearCreate;
    
    public $engine;
    
    public $fuelConsumed;
    
    public $vin;
    
    public $partsList;

	/**
	 * Initialize model
	 */
	public function init()
	{
		$user=Yii::app()->user;
		if($user->isGuest===false)
		{
			$this->name=$user->username;
			$this->email=$user->email;
		}
	}

	/**
	 * Validation rules
	 * @return array
	 */
	public function rules()
	{
		return array(
			array('name, email, phone, carInfo, partsList', 'required'),
			array('email', 'email'),
            array('name, email, phone, carInfo, partsList, yearCreate, engine, fuelConsumed, vin','safe'),
		);
	}

	/**
	 * @return array
	 */
	public function attributeLabels()
	{
		return array(
			'name'=>Yii::t('FeedbackModule.core', 'Ваше имя'),
			'email'=>Yii::t('FeedbackModule.core', 'Email'),
            'phone'=>Yii::t('FeedbackModule.core', 'Телефон'),
            'carInfo'=>Yii::t('FeedbackModule.core', 'Марка и модель автомобиля'),
            'yearCreate'=>Yii::t('FeedbackModule.core', 'Год выпусaка автомобиля'),
            'engine'=>Yii::t('FeedbackModule.core', 'Объем двигателя автомобиля'),
            'fuelConsumed'=>Yii::t('FeedbackModule.core', 'Потребляемое топливо'),
            'vin'=>Yii::t('FeedbackModule.core', 'VIN-код автомобиля'),
            'partsList'=>Yii::t('FeedbackModule.core', 'Список необходимых деталей'),
		);
	}

	/**
	 * Send email
	 */
	public function sendMessage()
	{
	    $message = "Телефон: ".$this->phone."\n".
                   "Марка и модель автомобиля: \n".$this->carInfo."\n".
                   "Год выпусaка автомобиля: \n".$this->yearCreate."\n".
                   "Объем двигателя автомобиля: \n".$this->engine."\n".
                   "Потребляемое топливо: \n".$this->fuelConsumed."\n".
                   "VIN-код автомобиля: \n".$this->vin."\n".
                   "Список необходимых деталей: \n".$this->partsList."\n";
		$mailer           = Yii::app()->mail;
		$mailer->From     = 'noreply@'.Yii::app()->request->serverName;
		$mailer->FromName = Yii::t('FeedbackModule.core', 'Форма обратной связи');
		$mailer->Subject  = Yii::t('FeedbackModule.core', 'Сообщение от {name}', array('{name}'=>CHtml::encode($this->name)));
		$mailer->Body     = CHtml::encode($message);
		$mailer->AddAddress(Yii::app()->settings->get('feedback', 'admin_email'));
		$mailer->AddReplyTo($this->email);
		$mailer->Send();

		Yii::app()->user->setFlash('messages', Yii::t('FeedbackModule', 'Спасибо. Ваше сообщение отправлено.'));
	}

}
