<?php
Yii::import('application.modules.store.models.StoreCountryTranslate');
/**
 * This is the model class for table "StoreCountry".
 *
 * The followings are the available columns in table 'StoreCountry':
 * @property integer $id
 */
class StoreCountry extends BaseModel
{
    public $translateModelName = 'StoreCountryTranslate';
    
    public $name;
    
    
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'StoreCountry';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
            array('name', 'required'),
            array('name', 'length', 'max'=>150),
			array('id, name', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'translate'=>array(self::HAS_ONE, $this->translateModelName, 'object_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
            'name' => Yii::t('StoreModule.admin','Название'),
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
				'relationName'=>'translate',
				'translateAttributes'=>array(
					'name',
				),
			),
		);
	}
    
    

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;
        $criteria->with = array('translate');

		$criteria->compare('id',$this->id);
        $criteria->compare('translate.name',$this->name,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return StoreCountry the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
    
    
    
    public static function getList()
    {
        $criteria=new CDbCriteria;
        $criteria->with = array('translate');
        $countries = new StoreCountry('search');
        $countries = $countries->findAll($criteria);
        $result = array();
        foreach($countries as $country)
        {
            $result[$country->id] = $country->name;
        }
        
        return $result;
    }
    
    
}
