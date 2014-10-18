<?php

return array(
	'id'=>'productUpdateForm',
	'showErrorSummary'=>true,
	'enctype'=>'multipart/form-data',
	'elements'=>array(
		'content'=>array(
			'type'=>'form',
			'title'=>Yii::t('StoreModule.admin', 'Общая информация'),
			'elements'=>array(
				'name'=>array(
					'type'=>'text',
				),
				'price'=>array(
					'type'=> 'text',
				),
				'url'=>array(
					'type'=>'text',
				),
				'main_category_id'=>array(
					'type'=>'dropdownlist',
					'items'=>StoreCategory::flatTree(),
					'empty'=>'---',
				),
                
                'region_id'=>array(
					'type'=>'dropdownlist',
					'items'=>CHtml::listData(StoreRegion::model()->findAll(), 'id', 'name'),
					'empty'=>Yii::t('StoreModule.admin', 'Выберите Регион'),
				),
			),
		),
		
	),
);

