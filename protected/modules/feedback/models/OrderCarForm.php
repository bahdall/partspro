<?php

/**
 * Model to handle feedback form
 */
class OrderCarForm extends CFormModel
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
    
    public $carYear;
    
    public $fuelConsumed;
    
    public $kpp;
    
    public $moreInfo;
    
    public $img;

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
			array('name, phone, carModel, carYear, kpp, carMark, fuelConsumed', 'required'),
			array('email', 'email'),
            array('img','file','types'=>'jpg,gif,png', 'safe'=>true, 'maxSize'=>'204800', 'allowEmpty'=>true, 'maxFiles'=>1),
            array('name, email, phone, carYear, carMark, carModel, kpp, img, moreInfo, fuelConsumed','safe'),
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
            'carYear'=>Yii::t('FeedbackModule.core', 'Год выпуска'),
            'carMark'=>Yii::t('FeedbackModule.core', 'Марка авто'),
            'carModel'=>Yii::t('FeedbackModule.core', 'Модель авто'),
            'fuelConsumed'=>Yii::t('FeedbackModule.core', 'Объем двигателя'),
            'kpp'=>Yii::t('FeedbackModule.core', 'КПП'),
            'moreInfo'=>Yii::t('FeedbackModule.core', 'Дополнительная информация'),
            'img'=>Yii::t('FeedbackModule.core', 'Загрузить фото: <span class="link">Выбрать</span>'),
            
		);
	}

	/**
	 * Send email
	 */
	public function sendMessage()
	{
        if( $Img=CUploadedFile::getInstance($this,'img') )
        {
            $this->img = $Img;
            $randomName = strtolower( crc32(microtime()).'.'.$this->img->getExtensionName() );
            $this->img->saveAs(Yii::getPathOfAlias('webroot.uploads.feedback').DIRECTORY_SEPARATOR.$randomName);
            $this->img = $_SERVER['HTTP_ORIGIN'].'/uploads/feedback/'.$randomName;
        }
        $message = Yii::app()->controller->renderPartial('orderCarMail', array(
			'model'=>$this,
		),true);
        
        
		$mailer           = Yii::app()->mail;
		$mailer->From     = 'noreply@'.Yii::app()->request->serverName;
		$mailer->FromName = Yii::t('FeedbackModule.core', 'Форма обратной связи');
		$mailer->Subject  = Yii::t('FeedbackModule.core', 'Сообщение от {name}', array('{name}'=>CHtml::encode($this->name)));
		$mailer->Body     = $message;
		$mailer->AddAddress(Yii::app()->settings->get('feedback', 'admin_email'));
		$mailer->AddReplyTo($this->email);
        $mailer->IsHTML();
		$mailer->Send();

		Yii::app()->user->setFlash('messages', Yii::t('FeedbackModule', 'Спасибо. Ваше сообщение отправлено.'));
	}

}
