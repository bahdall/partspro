<?php

/**
 * Model to handle feedback form
 */
class EvacuatorForm extends CFormModel
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
	public $carMark;

	/**
	 * @var string
	 */
	public $carModel;
    
    public $address;
    
    public $place;

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
			array('name, phone, place, carModel, address, carMark', 'required'),
			array('email', 'email'),
            array('name, email, phone, place, carMark, carModel, address','safe'),
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
            'place'=>Yii::t('FeedbackModule.core', 'Место заказа'),
            'carMark'=>Yii::t('FeedbackModule.core', 'Марка авто'),
            'carModel'=>Yii::t('FeedbackModule.core', 'Модель авто'),
            'address'=>Yii::t('FeedbackModule.core', 'Адрес загрузки'),
            
		);
	}

	/**
	 * Send email
	 */
	public function sendMessage()
	{
	    $message = "Телефон: ".$this->phone."\n".
                   "Марка автомобиля: \n".$this->carMark."\n".
                   "Модель автомобиля: \n".$this->carModel."\n".
                   "Место заказа: \n".$this->place."\n".
                   "Адрес загрузки: \n".$this->address."\n";
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
